.class Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TxOffsetPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;",
        ">;"
    }
.end annotation


# instance fields
.field public final offset:I

.field public final tx:Lorg/bitcoinj/core/Transaction;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Transaction;I)V
    .locals 0

    .line 4357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4358
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;->tx:Lorg/bitcoinj/core/Transaction;

    .line 4359
    iput p2, p0, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;->offset:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 4353
    check-cast p1, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;->compareTo(Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;)I
    .locals 1

    .line 4364
    iget v0, p0, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;->offset:I

    iget p1, p1, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;->offset:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    return p1
.end method
