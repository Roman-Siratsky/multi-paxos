# Latest version of Erlang-based Elixir installation: https://hub.docker.com/_/elixir/
FROM elixir:1.11.2-alpine

# Create and set home directory
WORKDIR /opt/multi_paxos

# Install all production dependencies
#RUN mix deps.get --only prods

# Compile all dependencies
#RUN mix deps.compile

# Copy all application files
COPY . .

# Compile the entire project
RUN mix compile