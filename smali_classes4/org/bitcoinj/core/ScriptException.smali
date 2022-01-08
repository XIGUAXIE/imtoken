.class public Lorg/bitcoinj/core/ScriptException;
.super Lorg/bitcoinj/core/VerificationException;
.source "ScriptException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
