.class public interface abstract Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeterministicKeyOrBuilder"
.end annotation


# virtual methods
.method public abstract getChainCode()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getIsFollowing()Z
.end method

.method public abstract getIssuedSubkeys()I
.end method

.method public abstract getLookaheadSize()I
.end method

.method public abstract getPath(I)I
.end method

.method public abstract getPathCount()I
.end method

.method public abstract getPathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSigsRequiredToSpend()I
.end method

.method public abstract hasChainCode()Z
.end method

.method public abstract hasIsFollowing()Z
.end method

.method public abstract hasIssuedSubkeys()Z
.end method

.method public abstract hasLookaheadSize()Z
.end method

.method public abstract hasSigsRequiredToSpend()Z
.end method
