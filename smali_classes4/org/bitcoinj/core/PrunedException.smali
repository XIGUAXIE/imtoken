.class public Lorg/bitcoinj/core/PrunedException;
.super Ljava/lang/Exception;
.source "PrunedException.java"


# instance fields
.field private hash:Lorg/bitcoinj/core/Sha256Hash;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/bitcoinj/core/PrunedException;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method


# virtual methods
.method public getHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bitcoinj/core/PrunedException;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method
