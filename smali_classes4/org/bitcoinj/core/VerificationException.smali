.class public Lorg/bitcoinj/core/VerificationException;
.super Ljava/lang/RuntimeException;
.source "VerificationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/VerificationException$CoinbaseHeightMismatch;,
        Lorg/bitcoinj/core/VerificationException$UnexpectedCoinbaseInput;,
        Lorg/bitcoinj/core/VerificationException$BlockVersionOutOfDate;,
        Lorg/bitcoinj/core/VerificationException$CoinbaseScriptSizeOutOfRange;,
        Lorg/bitcoinj/core/VerificationException$ExcessiveValue;,
        Lorg/bitcoinj/core/VerificationException$NegativeValueOutput;,
        Lorg/bitcoinj/core/VerificationException$DuplicatedOutPoint;,
        Lorg/bitcoinj/core/VerificationException$LargerThanMaxBlockSize;,
        Lorg/bitcoinj/core/VerificationException$EmptyInputsOrOutputs;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
