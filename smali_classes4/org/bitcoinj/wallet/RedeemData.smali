.class public Lorg/bitcoinj/wallet/RedeemData;
.super Ljava/lang/Object;
.source "RedeemData.java"


# instance fields
.field public final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation
.end field

.field public final redeemScript:Lorg/bitcoinj/script/Script;


# direct methods
.method private constructor <init>(Ljava/util/List;Lorg/bitcoinj/script/Script;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;",
            "Lorg/bitcoinj/script/Script;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    sget-object p1, Lorg/bitcoinj/core/ECKey;->PUBKEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    iput-object p2, p0, Lorg/bitcoinj/wallet/RedeemData;->keys:Ljava/util/List;

    return-void
.end method

.method public static of(Ljava/util/List;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/wallet/RedeemData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;",
            "Lorg/bitcoinj/script/Script;",
            ")",
            "Lorg/bitcoinj/wallet/RedeemData;"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/bitcoinj/wallet/RedeemData;

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/wallet/RedeemData;-><init>(Ljava/util/List;Lorg/bitcoinj/script/Script;)V

    return-object v0
.end method

.method public static of(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/wallet/RedeemData;
    .locals 1

    .line 56
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-eqz p0, :cond_2

    .line 57
    new-instance v0, Lorg/bitcoinj/wallet/RedeemData;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/wallet/RedeemData;-><init>(Ljava/util/List;Lorg/bitcoinj/script/Script;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method


# virtual methods
.method public getFullKey()Lorg/bitcoinj/core/ECKey;
    .locals 3

    .line 64
    iget-object v0, p0, Lorg/bitcoinj/wallet/RedeemData;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 65
    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->hasPrivKey()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
