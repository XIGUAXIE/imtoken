.class public Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;
.super Lorg/bitcoinj/wallet/DefaultCoinSelector;
.source "AllowUnconfirmedCoinSelector.java"


# static fields
.field private static instance:Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/bitcoinj/wallet/DefaultCoinSelector;-><init>()V

    return-void
.end method

.method public static get()Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;
    .locals 1

    .line 33
    sget-object v0, Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;->instance:Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;->instance:Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;

    .line 35
    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;->instance:Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;

    return-object v0
.end method


# virtual methods
.method protected shouldSelect(Lorg/bitcoinj/core/Transaction;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
