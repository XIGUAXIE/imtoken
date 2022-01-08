.class public Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;
.super Ljava/lang/Object;
.source "TorCreateFastKeyAgreement.java"

# interfaces
.implements Lcom/subgraph/orchid/crypto/TorKeyAgreement;


# instance fields
.field private final xValue:[B

.field private yValue:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    const/16 v1, 0x14

    .line 13
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorRandom;->getBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->xValue:[B

    return-void
.end method


# virtual methods
.method public createOnionSkin()[B
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->getPublicValue()[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeysFromHandshakeResponse([B[B[B)Z
    .locals 2

    .line 43
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v0, 0x14

    new-array v1, v0, [B

    new-array v0, v0, [B

    .line 46
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->setOtherValue([B)V

    .line 49
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->getDerivedValue()[B

    move-result-object p1

    .line 50
    new-instance v1, Lcom/subgraph/orchid/crypto/TorKeyDerivation;

    invoke-direct {v1, p1}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;-><init>([B)V

    .line 51
    invoke-virtual {v1, p2, p3}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->deriveKeys([B[B)V

    .line 52
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getDerivedValue()[B
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->yValue:[B

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    new-array v0, v0, [B

    .line 32
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->xValue:[B

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->yValue:[B

    invoke-static {v1, v3, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setOtherValue() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPublicValue()[B
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->xValue:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public setOtherValue([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 21
    array-length v0, p1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 24
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->yValue:[B

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
