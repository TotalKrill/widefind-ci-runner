from rust:latest

RUN apt-get update -yq
RUN rustup install stable
RUN rustup install nightly
RUN rustup default stable

RUN rustup +stable target add thumbv7em-none-eabihf
RUN rustup +nightly target add thumbv7em-none-eabihf

RUN rustup +stable target add x86_64-unknown-linux-gnu
RUN rustup +nightly target add x86_64-unknown-linux-gnu

RUN rustup +stable component add rustfmt

RUN cargo install cross
