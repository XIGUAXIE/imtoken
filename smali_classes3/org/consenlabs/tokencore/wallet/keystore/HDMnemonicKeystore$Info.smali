.class public Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;
.super Ljava/lang/Object;
.source "HDMnemonicKeystore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private curve:Ljava/lang/String;

.field private purpuse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "spec256k1"

    .line 211
    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;->curve:Ljava/lang/String;

    const-string v0, "sign"

    .line 212
    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;->purpuse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurve()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;->curve:Ljava/lang/String;

    return-object v0
.end method

.method public getPurpuse()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;->purpuse:Ljava/lang/String;

    return-object v0
.end method

.method public setCurve(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;->curve:Ljava/lang/String;

    return-void
.end method

.method public setPurpuse(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;->purpuse:Ljava/lang/String;

    return-void
.end method
