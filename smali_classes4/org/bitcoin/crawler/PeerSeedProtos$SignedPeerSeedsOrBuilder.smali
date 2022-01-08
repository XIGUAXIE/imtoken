.class public interface abstract Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeedsOrBuilder;
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
    name = "SignedPeerSeedsOrBuilder"
.end annotation


# virtual methods
.method public abstract getPeerSeeds()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPubkey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSignature()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasPeerSeeds()Z
.end method

.method public abstract hasPubkey()Z
.end method

.method public abstract hasSignature()Z
.end method
