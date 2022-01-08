.class public Lorg/bitcoinj/crypto/MnemonicException;
.super Ljava/lang/Exception;
.source "MnemonicException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/crypto/MnemonicException$MnemonicWordException;,
        Lorg/bitcoinj/crypto/MnemonicException$MnemonicChecksumException;,
        Lorg/bitcoinj/crypto/MnemonicException$MnemonicLengthException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
