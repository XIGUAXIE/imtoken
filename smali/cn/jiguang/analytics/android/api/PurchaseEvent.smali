.class public Lcn/jiguang/analytics/android/api/PurchaseEvent;
.super Lcn/jiguang/analytics/android/api/Event;


# static fields
.field private static final TAG:Ljava/lang/String; = "PurchaseEvent"

.field private static final serialVersionUID:J = -0x5fa64789b945fb6fL


# instance fields
.field private isSetPurchasePrice:Z

.field private isSetPurchaseSuccess:Z

.field private purchaseCurrency:Lcn/jiguang/analytics/android/api/Currency;
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "purchase_currency"
    .end annotation
.end field

.field private purchaseGoodsCount:I
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "purchase_quantity"
    .end annotation
.end field

.field private purchaseGoodsid:Ljava/lang/String;
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "purchase_goods_id"
    .end annotation
.end field

.field private purchaseGoodsname:Ljava/lang/String;
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "purchase_goods_name"
    .end annotation
.end field

.field private purchaseGoodstype:Ljava/lang/String;
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "purchase_goods_type"
    .end annotation
.end field

.field private purchasePrice:D
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "purchase_price"
    .end annotation
.end field

.field private purchaseSuccess:Z
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "purchase_success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "custom_purchase"

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/api/Event;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isSetPurchasePrice:Z

    iput-boolean v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isSetPurchaseSuccess:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DZLcn/jiguang/analytics/android/api/Currency;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "custom_purchase"

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/api/Event;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isSetPurchasePrice:Z

    iput-boolean v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isSetPurchaseSuccess:Z

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsid:Ljava/lang/String;

    iput-object p2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsname:Ljava/lang/String;

    iput-wide p3, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchasePrice:D

    iput-boolean p5, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseSuccess:Z

    iput-object p6, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseCurrency:Lcn/jiguang/analytics/android/api/Currency;

    iput-object p7, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodstype:Ljava/lang/String;

    iput p8, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsCount:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isSetPurchasePrice:Z

    iput-boolean p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isSetPurchaseSuccess:Z

    return-void
.end method


# virtual methods
.method public checkEvent()Z
    .locals 4

    invoke-super {p0}, Lcn/jiguang/analytics/android/api/Event;->checkEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    const-string v2, "PurchaseEvent"

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "purchase_currency"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedpurchase_currency"

    invoke-virtual {p0, v2, v0}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "purchase_goods_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedpurchase_goods_id"

    invoke-virtual {p0, v2, v0}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "purchase_goods_name"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedpurchase_goods_name"

    invoke-virtual {p0, v2, v0}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "purchase_goods_type"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedpurchase_goods_type"

    invoke-virtual {p0, v2, v0}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "purchase_success"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedpurchase_success"

    invoke-virtual {p0, v2, v0}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "purchase_price"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedpurchase_price"

    invoke-virtual {p0, v2, v0}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "purchase_quantity"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedpurchase_quantity"

    invoke-virtual {p0, v2, v0}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "purchase_time"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedpurchase_time"

    invoke-virtual {p0, v2, v0}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsid:Ljava/lang/String;

    const-string/jumbo v3, "purchaseGoodsid"

    invoke-virtual {p0, v0, v3, v1}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isValideValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsname:Ljava/lang/String;

    const-string/jumbo v3, "purchaseGoodsname"

    invoke-virtual {p0, v0, v3, v1}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isValideValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodstype:Ljava/lang/String;

    const-string/jumbo v3, "purchaseGoodstype"

    invoke-virtual {p0, v0, v3, v1}, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isValideValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-boolean v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isSetPurchasePrice:Z

    if-nez v0, :cond_c

    const-string v0, "invalide PurchaseEvent - purchasePrice must set value"

    :goto_0
    invoke-static {v2, v0}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_c
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseCurrency:Lcn/jiguang/analytics/android/api/Currency;

    if-nez v0, :cond_d

    const-string v0, "invalide PurchaseEvent - purchaseCurrency was empty"

    goto :goto_0

    :cond_d
    iget-boolean v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isSetPurchaseSuccess:Z

    if-nez v0, :cond_e

    const-string v0, "invalide PurchaseEvent - purchaseSuccess must set value"

    goto :goto_0

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-super {p0, p1}, Lcn/jiguang/analytics/android/api/Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsid:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsid:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsname:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsname:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    :cond_6
    iget-wide v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchasePrice:D

    iget-wide v4, p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchasePrice:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_7

    return v1

    :cond_7
    iget-boolean v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseSuccess:Z

    iget-boolean v3, p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseSuccess:Z

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsCount:I

    iget v3, p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsCount:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseCurrency:Lcn/jiguang/analytics/android/api/Currency;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseCurrency:Lcn/jiguang/analytics/android/api/Currency;

    invoke-virtual {v2, v3}, Lcn/jiguang/analytics/android/api/Currency;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_a
    iget-object v2, p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseCurrency:Lcn/jiguang/analytics/android/api/Currency;

    if-eqz v2, :cond_b

    :goto_2
    return v1

    :cond_b
    iget-object v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodstype:Ljava/lang/String;

    iget-object p1, p1, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodstype:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    if-nez p1, :cond_d

    return v0

    :cond_d
    :goto_3
    return v1
.end method

.method public getPurchaseCurrency()Lcn/jiguang/analytics/android/api/Currency;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseCurrency:Lcn/jiguang/analytics/android/api/Currency;

    return-object v0
.end method

.method public getPurchaseGoodsCount()I
    .locals 1

    iget v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsCount:I

    return v0
.end method

.method public getPurchaseGoodsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsid:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseGoodsname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsname:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseGoodstype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodstype:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasePrice()D
    .locals 2

    iget-wide v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchasePrice:D

    return-wide v0
.end method

.method public getPurchaseSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseSuccess:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    invoke-super {p0}, Lcn/jiguang/analytics/android/api/Event;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsid:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsname:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchasePrice:D

    double-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseSuccess:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseCurrency:Lcn/jiguang/analytics/android/api/Currency;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/api/Currency;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodstype:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public setPurchaseCurrency(Lcn/jiguang/analytics/android/api/Currency;)Lcn/jiguang/analytics/android/api/PurchaseEvent;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseCurrency:Lcn/jiguang/analytics/android/api/Currency;

    return-object p0
.end method

.method public setPurchaseGoodsCount(I)Lcn/jiguang/analytics/android/api/PurchaseEvent;
    .locals 0

    iput p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsCount:I

    return-object p0
.end method

.method public setPurchaseGoodsid(Ljava/lang/String;)Lcn/jiguang/analytics/android/api/PurchaseEvent;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsid:Ljava/lang/String;

    return-object p0
.end method

.method public setPurchaseGoodsname(Ljava/lang/String;)Lcn/jiguang/analytics/android/api/PurchaseEvent;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsname:Ljava/lang/String;

    return-object p0
.end method

.method public setPurchaseGoodstype(Ljava/lang/String;)Lcn/jiguang/analytics/android/api/PurchaseEvent;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodstype:Ljava/lang/String;

    return-object p0
.end method

.method public setPurchasePrice(D)Lcn/jiguang/analytics/android/api/PurchaseEvent;
    .locals 0

    iput-wide p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchasePrice:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isSetPurchasePrice:Z

    return-object p0
.end method

.method public setPurchaseSuccess(Z)Lcn/jiguang/analytics/android/api/PurchaseEvent;
    .locals 0

    iput-boolean p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseSuccess:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->isSetPurchaseSuccess:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseEvent{purchaseGoodsCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseGoodstype=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodstype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", purchaseCurrency="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseCurrency:Lcn/jiguang/analytics/android/api/Currency;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", purchaseSuccess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", purchasePrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchasePrice:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", purchaseGoodsname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", purchaseGoodsid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/PurchaseEvent;->purchaseGoodsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/jiguang/analytics/android/api/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
