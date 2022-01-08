.class public Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;
.super Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;
.source "ECKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/ECKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyIsEncryptedException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1205
    invoke-direct {p0}, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;-><init>()V

    return-void
.end method
