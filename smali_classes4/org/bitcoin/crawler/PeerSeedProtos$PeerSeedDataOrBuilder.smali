.class public interface abstract Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;
.super Ljava/lang/Object;
.source "PeerSeedProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/crawler/PeerSeedProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PeerSeedDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getIpAddress()Ljava/lang/String;
.end method

.method public abstract getIpAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPort()I
.end method

.method public abstract getServices()I
.end method

.method public abstract hasIpAddress()Z
.end method

.method public abstract hasPort()Z
.end method

.method public abstract hasServices()Z
.end method
