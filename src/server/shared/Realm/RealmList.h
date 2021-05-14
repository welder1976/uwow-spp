/*
 * Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef _REALMLIST_H
#define _REALMLIST_H

#include "Define.h"
#include "Realm.h"
#include <map>
#include <array>
#include <vector>
#include <unordered_set>
#include <boost/asio.hpp>

struct RealmBuildInfo
{
    uint32 Build;
    uint32 MajorVersion;
    uint32 MinorVersion;
    uint32 BugfixVersion;
    std::array<char, 4> HotfixVersion;
    std::array<uint8, 16> WinAuthSeed;
    std::array<uint8, 16> Win64AuthSeed;
    std::array<uint8, 16> Mac64AuthSeed;
};

namespace boost
{
    namespace asio
    {
        class io_service;
    }

    namespace system
    {
        class error_code;
    }
}

namespace bgs
{
    namespace protocol
    {
        namespace game_utilities
        {
            namespace v1
            {
                class ClientResponse;
                class GetAllValuesForAttributeResponse;
            }
        }
    }
}

namespace JSON
{
    namespace RealmList
    {
        class RealmListUpdates;
    }
}

/// Storage object for the list of realms on the server
class RealmList
{
public:
    typedef std::map<Battlenet::RealmHandle, Realm> RealmMap;
    typedef std::map<uint32, boost::asio::ip::address> RealmIPMap;

    static RealmList* Instance();

    ~RealmList();

    void Initialize(boost::asio::io_service& ioService, uint32 updateInterval);
    void Close();

    RealmMap const& GetRealms() const { return _realms; }
    Realm const* GetRealm(Battlenet::RealmHandle const& id) const;

    RealmBuildInfo const* GetBuildInfo(uint32 build) const;
    uint32 GetMinorMajorBugfixVersionForBuild(uint32 build) const;
    std::unordered_set<std::string> const& GetSubRegions() const { return _subRegions; }
    void WriteSubRegions(bgs::protocol::game_utilities::v1::GetAllValuesForAttributeResponse* response) const;
    std::vector<uint8> GetRealmEntryJSON(Battlenet::RealmHandle const& id, uint32 build) const;
    std::vector<uint8> GetRealmList(uint32 build, std::string const& subRegion, uint8 Battlegroup) const;
    boost::asio::ip::address GetAddressForClient(uint32 RealmID);
    uint32 JoinRealm(uint32 realmAddress, uint32 build, boost::asio::ip::address const& clientAddress, std::array<uint8, 32> const& clientSecret, LocaleConstant locale, std::string const& os, std::string accountName, bgs::protocol::game_utilities::v1::ClientResponse* response) const;

private:
    RealmList();

    void LoadBuildInfo();
    void UpdateRealms(boost::system::error_code const& error);
    void UpdateRealm(Battlenet::RealmHandle const& id, uint32 build, std::string const& name, boost::asio::ip::address const& address, boost::asio::ip::address const& localAddr, boost::asio::ip::address const& localSubmask, uint16 port, uint8 icon, RealmFlags flag, uint8 timezone, AccountTypes allowedSecurityLevel, float population);

    std::vector<RealmBuildInfo> _builds;
    RealmMap _realms;
    RealmIPMap _realmIPs;
    std::unordered_set<std::string> _subRegions;
    uint32 _updateInterval;
    std::unique_ptr<boost::asio::deadline_timer> _updateTimer;
    std::unique_ptr<boost::asio::ip::tcp_resolver> _resolver;
    mutable std::recursive_mutex i_RealmList_lock;
};

#define sRealmList RealmList::Instance()
#endif
