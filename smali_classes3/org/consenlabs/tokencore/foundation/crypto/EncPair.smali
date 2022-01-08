.class public Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
.super Ljava/lang/Object;
.source "EncPair.java"


# instance fields
.field private encStr:Ljava/lang/String;

.field private nonce:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncStr()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;->encStr:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public setEncStr(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;->encStr:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;->nonce:Ljava/lang/String;

    return-void
.end method
