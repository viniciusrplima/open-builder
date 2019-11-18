#pragma once

#include <common/constants.h>
#include <vector>

#include "network/server.h"
#include "world/chunk/chunk_section.h"
#include "world/entity.h"

class LaunchConfig;

namespace server {
    class Application {
      public:
        Application(const LaunchConfig &config, port_t port);

        void run(sf::Time timeout);

      private:
        void update(sf::Time deltaTime);
        void sendState();

        EntityArray m_entities;
        Server m_server;

        bool m_isRunning = true;

        std::vector<ChunkSection> m_chunks;
    };
} // namespace server
