.class Lorg/bitcoinj/wallet/Wallet$FeeCalculation;
.super Ljava/lang/Object;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeeCalculation"
.end annotation


# instance fields
.field public bestChangeOutput:Lorg/bitcoinj/core/TransactionOutput;

.field public bestCoinSelection:Lorg/bitcoinj/wallet/CoinSelection;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bitcoinj/wallet/Wallet$1;)V
    .locals 0

    .line 4800
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;-><init>()V

    return-void
.end method
