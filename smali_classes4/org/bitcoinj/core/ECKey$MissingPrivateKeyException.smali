.class public Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;
.super Ljava/lang/RuntimeException;
.source "ECKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/ECKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissingPrivateKeyException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1202
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
