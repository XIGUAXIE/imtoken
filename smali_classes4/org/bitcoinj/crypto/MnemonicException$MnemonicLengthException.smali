.class public Lorg/bitcoinj/crypto/MnemonicException$MnemonicLengthException;
.super Lorg/bitcoinj/crypto/MnemonicException;
.source "MnemonicException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/crypto/MnemonicException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MnemonicLengthException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/bitcoinj/crypto/MnemonicException;-><init>(Ljava/lang/String;)V

    return-void
.end method
