FROM debian:bookworm-slim
SHELL ["/bin/bash", "-o", "pipefail", "-o", "errexit", "-o", "nounset", "-o", "nolog", "-c"]
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
RUN uv python install
ENV PATH="/root/.local/bin:$PATH"
RUN uv tool install tox
WORKDIR /app
ADD *.rst LICENSE *.txt *.py *.ini *.sh *.toml ./
ADD src/ src/
ENTRYPOINT ["/app/docker-entry.sh"]
CMD []
