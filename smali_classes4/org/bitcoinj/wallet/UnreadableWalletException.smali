.class public Lorg/bitcoinj/wallet/UnreadableWalletException;
.super Ljava/lang/Exception;
.source "UnreadableWalletException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/UnreadableWalletException$WrongNetwork;,
        Lorg/bitcoinj/wallet/UnreadableWalletException$FutureVersion;,
        Lorg/bitcoinj/wallet/UnreadableWalletException$BadPassword;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
