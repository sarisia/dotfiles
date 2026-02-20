function mcp
  docker mcp gateway run \
    --secrets ~/.docker/mcp/secrets \
    --registry ~/.docker/mcp/registry.yaml \
    --port 8080 \
    --transport streaming;
end
