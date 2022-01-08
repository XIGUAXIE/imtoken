.class public abstract Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;
.super Lorg/consenlabs/tokencore/wallet/keystore/Keystore;
.source "WalletKeystore.java"


# instance fields
.field address:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract changePassword(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/Keystore;
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;->address:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;->address:Ljava/lang/String;

    return-void
.end method
