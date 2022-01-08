.class public Lorg/bitcoinj/wallet/DefaultRiskAnalysis$Analyzer;
.super Ljava/lang/Object;
.source "DefaultRiskAnalysis.java"

# interfaces
.implements Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/DefaultRiskAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Analyzer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Ljava/util/List;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/Wallet;",
            "Lorg/bitcoinj/core/Transaction;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)",
            "Lorg/bitcoinj/wallet/DefaultRiskAnalysis;"
        }
    .end annotation

    .line 258
    new-instance v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Ljava/util/List;Lorg/bitcoinj/wallet/DefaultRiskAnalysis$1;)V

    return-object v0
.end method

.method public bridge synthetic create(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Ljava/util/List;)Lorg/bitcoinj/wallet/RiskAnalysis;
    .locals 0

    .line 255
    invoke-virtual {p0, p1, p2, p3}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$Analyzer;->create(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Ljava/util/List;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis;

    move-result-object p1

    return-object p1
.end method
