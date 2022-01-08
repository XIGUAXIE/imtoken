.class final Lorg/bitcoinj/core/Transaction$1;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/bitcoinj/core/Transaction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 67
    check-cast p1, Lorg/bitcoinj/core/Transaction;

    check-cast p2, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/Transaction$1;->compare(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction;)I
    .locals 4

    .line 70
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 71
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 72
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/Sha256Hash;->compareTo(Lorg/bitcoinj/core/Sha256Hash;)I

    move-result v0

    :goto_0
    return v0
.end method
