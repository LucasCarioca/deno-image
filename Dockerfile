FROM debian

# Install necessary tools
RUN apt-get update
RUN apt-get install curl unzip -y

# Create a user
RUN useradd -ms /bin/bash deno
USER deno
WORKDIR /home/deno

# Install Deno
RUN curl -fsSL https://deno.land/x/install/install.sh | sh

# Add deno to PATH
ENV DENO_INSTALL "/home/deno/.deno"
ENV PATH "$DENO_INSTALL/bin:$PATH"