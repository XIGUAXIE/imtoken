.class public abstract Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;
.super Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;
.source "IMTKeystore.java"


# instance fields
.field metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonGetter;
        value = "imTokenMeta"
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    return-object v0
.end method

.method public setMetadata(Lorg/consenlabs/tokencore/wallet/model/Metadata;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    return-void
.end method
