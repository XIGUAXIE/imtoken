.class public Lcom/unionpay/mobile/android/nocard/views/ao;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/nocard/views/ao$a;
    }
.end annotation


# instance fields
.field private A:Landroid/os/Handler;

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:I

.field private t:I

.field private u:Landroid/widget/Button;

.field private v:Lcom/unionpay/mobile/android/upviews/a;

.field private w:Lcom/unionpay/mobile/android/views/order/o;

.field private x:Landroid/widget/LinearLayout;

.field private y:Z

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->t:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->u:Landroid/widget/Button;

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->v:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->r:Ljava/util/List;

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->y:Z

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->z:Landroid/os/Handler;

    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lcom/unionpay/mobile/android/nocard/views/ap;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/nocard/views/ap;-><init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->A:Landroid/os/Handler;

    const/4 p1, 0x2

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->f:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->aE:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object p2, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/unionpay/mobile/android/model/b;->aP:I

    :cond_0
    const-string p1, "order"

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->q:Ljava/lang/String;

    const p1, -0x10100c

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->e()V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-eqz p1, :cond_2

    :cond_1
    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lcom/unionpay/mobile/android/nocard/views/aq;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/nocard/views/aq;-><init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->z:Landroid/os/Handler;

    :cond_2
    sget-boolean p1, Lcom/unionpay/mobile/android/model/b;->bl:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget p1, p1, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object p2, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->A:Landroid/os/Handler;

    const/16 p2, 0x1f4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->A:Landroid/os/Handler;

    const-wide/16 v0, 0x1f40

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string p1, "uppay"

    const-string p2, "mHceHandler.sendMessageDelayed(msg, 8000)"

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/ao;I)I
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->t:I

    return p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/model/d;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lcom/unionpay/mobile/android/model/d;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/ao;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->v()V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/ao;I)I
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    return p1
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/ao;)Lcom/unionpay/mobile/android/views/order/o;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    return-object p0
.end method

.method private static b(Lcom/unionpay/mobile/android/model/d;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/model/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/unionpay/mobile/android/model/d;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " **** "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/unionpay/mobile/android/model/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/unionpay/mobile/android/model/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/unionpay/mobile/android/model/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/unionpay/mobile/android/model/d;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "text1"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "text2"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/nocard/views/ao;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/nocard/views/ao;I)V
    .locals 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/d;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/d;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/model/d;

    invoke-interface {v1}, Lcom/unionpay/mobile/android/model/d;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unionpay/mobile/android/model/d;

    invoke-interface {v2}, Lcom/unionpay/mobile/android/model/d;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iput p1, v3, Lcom/unionpay/mobile/android/model/b;->bc:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "\"pan\":\""

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"carrier_tp\":\"9\",\"issuer\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"type\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "uppay"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v0, "cardrules"

    invoke-virtual {p0, v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/nocard/views/ao;)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->j:Z

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "\"user_id\":\"%s\""

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->m(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(ILcom/unionpay/mobile/android/model/e;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    :cond_2
    :goto_0
    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    return-void
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/nocard/views/ao;)V
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->b(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(I)V

    return-void

    :cond_0
    const-string v0, "userId"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/unionpay/mobile/android/utils/o;->e:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(ILcom/unionpay/mobile/android/model/e;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    return-void
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/nocard/views/ao;)V
    .locals 4

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bl:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aE:Z

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->bh:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    return-void
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->A:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "uppay"

    const-string v1, "mHceHandler remove Message"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method protected final a(Lcom/unionpay/mobile/android/model/a;)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->br:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object p1, v0, Lcom/unionpay/mobile/android/model/b;->bs:Lcom/unionpay/mobile/android/model/c;

    const/4 v0, 0x2

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "0"

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\"pan\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/model/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "2"

    const-string v2, "1\",\"carrier_tp\":\"10"

    invoke-static {v0, p1, v1, v2}, Lcom/unionpay/mobile/android/nocard/views/bh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->j:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .locals 0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1, v1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(I)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object p1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->v()V

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(ILcom/unionpay/mobile/android/model/e;)V

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->i()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1, v1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(I)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(ILcom/unionpay/mobile/android/model/e;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    :cond_3
    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->e(Lorg/json/JSONObject;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->t:I

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    iget p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->N:I

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iput v1, p1, Lcom/unionpay/mobile/android/model/b;->N:I

    goto :goto_0

    :cond_6
    iget p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->N:I

    if-ge p1, v0, :cond_7

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, p1, Lcom/unionpay/mobile/android/model/b;->N:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/unionpay/mobile/android/model/b;->N:I

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->N:I

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/views/order/o;->c(I)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v0, -0x1

    iput v0, p1, Lcom/unionpay/mobile/android/model/b;->N:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->c()V

    :goto_1
    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(Lorg/json/JSONObject;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "login_rules"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->X:Lorg/json/JSONArray;

    const-string v2, "register_url"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v0, Lcom/unionpay/mobile/android/model/b;->Y:Lorg/json/JSONObject;

    iget-object p1, v0, Lcom/unionpay/mobile/android/model/b;->X:Lorg/json/JSONArray;

    const/4 v2, 0x2

    if-eqz p1, :cond_b

    iget-object p1, v0, Lcom/unionpay/mobile/android/model/b;->X:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-gtz p1, :cond_a

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 p1, 0x2

    :goto_3
    if-eqz p1, :cond_c

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(I)V

    goto :goto_4

    :cond_c
    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    :goto_4
    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->u:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 9

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v2, Lcom/unionpay/mobile/android/model/b;->o:Ljava/lang/String;

    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-direct {v2, v3, v5, p0}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->J:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->aE:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v3, v3, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v4, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v3, v3, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v4, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v3, v3, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v4, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_1
    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v6, 0x406

    invoke-virtual {v3, v6, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v3, v7}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v7

    move-object v3, v2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILcom/unionpay/mobile/android/widgets/ay$a;)V

    :cond_2
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v3, v3, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v4, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->l:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/widgets/ay;->a(Ljava/lang/String;)V

    :cond_4
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "init"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->J:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->m()V

    :cond_0
    return-void

    :cond_1
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(Lorg/json/JSONObject;)V

    return-void

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/nocard/views/ao;->e(Lorg/json/JSONObject;)V

    :cond_3
    return-void

    :cond_4
    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->j:Z

    const/4 p2, 0x5

    iput p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p2, p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final c()V
    .locals 11

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a(Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->c:Lcom/unionpay/mobile/android/resource/c;

    const/4 v1, -0x1

    const/16 v2, 0x7de

    invoke-virtual {v0, v2, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v9, 0x0

    const/4 v3, 0x1

    const-string v10, "label"

    if-eq v0, v2, :cond_f

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->J:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/unionpay/mobile/android/views/order/o;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;

    move-result-object v0

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-boolean v2, Lcom/unionpay/mobile/android/model/b;->bl:Z

    if-eqz v2, :cond_2

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    sget-object v3, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unionpay/mobile/android/model/d;

    invoke-static {v3}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lcom/unionpay/mobile/android/model/d;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->r:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v0, Lcom/unionpay/mobile/android/model/b;->t:Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->r:Ljava/util/List;

    const-string v8, ""

    invoke-static/range {v3 .. v8}, Lcom/unionpay/mobile/android/views/order/o;->b(Landroid/content/Context;Lorg/json/JSONArray;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/unionpay/mobile/android/views/order/o;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v0, v7}, Lcom/unionpay/mobile/android/views/order/o;->a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->t:Lorg/json/JSONArray;

    invoke-static {v4}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONArray;)Z

    move-result v4

    const-string v5, "uppay"

    if-nez v4, :cond_9

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->v:Lorg/json/JSONObject;

    invoke-static {v6, v10}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, v7, Lcom/unionpay/mobile/android/model/b;->v:Lorg/json/JSONObject;

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    sget-object v6, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/2addr v2, v6

    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->w:Lorg/json/JSONObject;

    invoke-static {v6, v10}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, v7, Lcom/unionpay/mobile/android/model/b;->w:Lorg/json/JSONObject;

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, v7, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-static {v6, v7, v3}, Lcom/unionpay/mobile/android/nocard/views/xlistview/a;->a(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/unionpay/mobile/android/views/order/o;->a(Ljava/util/List;)Lcom/unionpay/mobile/android/views/order/o;

    :cond_6
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->ay:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-nez v3, :cond_7

    sget-object v3, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v2, v3

    :cond_7
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->t()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-nez v3, :cond_8

    sget-object v3, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v2, v3

    :cond_8
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->t()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/unionpay/mobile/android/model/b;->aA:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/unionpay/mobile/android/model/b;->aB:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v3, v3, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v6, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v3, v6, :cond_9

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->an:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "spay"

    const-string v6, "in"

    invoke-static {v3, v6}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/unionpay/mobile/android/views/order/l;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v2, v3

    :cond_9
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-eqz v3, :cond_a

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_a
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_c

    :cond_b
    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v6, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/views/order/o;->b(I)Lcom/unionpay/mobile/android/views/order/o;

    move v2, v3

    goto :goto_1

    :cond_c
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v3, v6}, Lcom/unionpay/mobile/android/nocard/utils/c;->a(Landroid/content/Context;Lcom/unionpay/mobile/android/model/b;)I

    move-result v3

    and-int/2addr v3, v2

    if-nez v3, :cond_d

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v6, v6, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-nez v6, :cond_d

    sget-object v3, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_d
    invoke-virtual {v0, v3}, Lcom/unionpay/mobile/android/views/order/o;->b(I)Lcom/unionpay/mobile/android/views/order/o;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-nez v3, :cond_e

    sget-object v3, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v2, v3

    :cond_e
    :goto_1
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->t:Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lcom/unionpay/mobile/android/views/order/o;->a(Lorg/json/JSONArray;)Lcom/unionpay/mobile/android/views/order/o;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->w:Lorg/json/JSONObject;

    invoke-static {v3, v10}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/unionpay/mobile/android/views/order/o;->a(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/views/order/o;->a(I)Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v0, v4}, Lcom/unionpay/mobile/android/views/order/o;->a(Z)Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/o;->c()V

    goto :goto_4

    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-static {v0, v2, v3}, Lcom/unionpay/mobile/android/nocard/views/xlistview/a;->a(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->J:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v3, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_10

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v3, v3, Lcom/unionpay/mobile/android/model/b;->aP:I

    if-ne v2, v3, :cond_11

    :cond_10
    const/4 v0, 0x0

    :cond_11
    move-object v5, v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->w:Lorg/json/JSONObject;

    invoke-static {v0, v10}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v0, Lcom/unionpay/mobile/android/model/b;->t:Lorg/json/JSONArray;

    invoke-static/range {v3 .. v8}, Lcom/unionpay/mobile/android/views/order/o;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    :goto_4
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/ao$a;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/nocard/views/ao$a;-><init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/views/order/o;->a(Lcom/unionpay/mobile/android/views/order/o$a;)Lcom/unionpay/mobile/android/views/order/o;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->au:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/views/order/o;->b(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->Y:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/views/order/o;->c(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "href"

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "title"

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v2, v0}, Lcom/unionpay/mobile/android/views/order/o;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_12
    :goto_5
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v2, 0x7d8

    invoke-virtual {v0, v2, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v2, v0}, Lcom/unionpay/mobile/android/views/order/o;->b(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->m:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_13

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bl:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->A:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(Landroid/os/Handler;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->w:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->bs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/unionpay/mobile/android/global/b;->l:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0x99999a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v0, Lcom/unionpay/mobile/android/global/a;->b:I

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/views/order/o;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->n:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->m:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iput-object p2, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->J:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->k()V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->v()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->J:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aE:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->k()V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->v()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->v()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->s()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onAttachedToWindow()V

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->an:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "spay"

    const-string v1, "out"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->bp:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->bq:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->v:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->clearFocus()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->y:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->z:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->y:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/unionpay/mobile/android/nocard/views/b;->onLayout(ZIIII)V

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method protected final s()V
    .locals 5

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/ar;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/nocard/views/ar;-><init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/as;-><init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->av:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected u()V
    .locals 0

    return-void
.end method
