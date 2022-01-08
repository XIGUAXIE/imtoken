.class public abstract Lorg/consenlabs/tokencore/wallet/keystore/V3Ignore;
.super Ljava/lang/Object;
.source "V3Ignore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEncMnemonic()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getEncXPub()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonGetter;
        value = "imTokenMeta"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getMnemonicIndex()I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getMnemonicPath()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method
