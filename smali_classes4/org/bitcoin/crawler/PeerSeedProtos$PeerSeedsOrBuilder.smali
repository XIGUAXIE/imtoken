.class public interface abstract Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedsOrBuilder;
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
    name = "PeerSeedsOrBuilder"
.end annotation


# virtual methods
.method public abstract getNet()Ljava/lang/String;
.end method

.method public abstract getNetBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSeed(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
.end method

.method public abstract getSeedCount()I
.end method

.method public abstract getSeedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeedOrBuilder(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;
.end method

.method public abstract getSeedOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract hasNet()Z
.end method

.method public abstract hasTimestamp()Z
.end method
