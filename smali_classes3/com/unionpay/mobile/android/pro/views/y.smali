.class public Lcom/unionpay/mobile/android/pro/views/y;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# instance fields
.field private A:Lcom/unionpay/mobile/android/upviews/a;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Landroid/os/Handler;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/view/View$OnClickListener;

.field private I:Landroid/view/View$OnClickListener;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/unionpay/mobile/android/upwidget/a;

.field private x:Lcom/unionpay/mobile/android/upwidget/a;

.field private y:Landroid/widget/TextView;

.field private z:Lcom/unionpay/mobile/android/upviews/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    const-string p1, "00"

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->r:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->s:I

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    const/16 p2, 0x14

    iput p2, p0, Lcom/unionpay/mobile/android/pro/views/y;->u:I

    const/4 p2, 0x5

    iput p2, p0, Lcom/unionpay/mobile/android/pro/views/y;->v:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/y;->w:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/y;->x:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/y;->y:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->C:Z

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/y;->D:Landroid/os/Handler;

    new-instance p1, Lcom/unionpay/mobile/android/pro/views/z;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/pro/views/z;-><init>(Lcom/unionpay/mobile/android/pro/views/y;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->E:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/pro/views/aa;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/pro/views/aa;-><init>(Lcom/unionpay/mobile/android/pro/views/y;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->F:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/pro/views/ab;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/pro/views/ab;-><init>(Lcom/unionpay/mobile/android/pro/views/y;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->G:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/pro/views/ac;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/pro/views/ac;-><init>(Lcom/unionpay/mobile/android/pro/views/y;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->H:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/pro/views/ae;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/pro/views/ae;-><init>(Lcom/unionpay/mobile/android/pro/views/y;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->I:Landroid/view/View$OnClickListener;

    const/4 p1, 0x6

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->f:I

    const-string p1, "sdpay"

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->q:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->D:Landroid/os/Handler;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->K:Z

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->C:Z

    const p1, -0x10100c

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->e()V

    return-void
.end method

.method static synthetic A(Lcom/unionpay/mobile/android/pro/views/y;)V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->i()V

    return-void
.end method

.method static synthetic B(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/widgets/m;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-object p0
.end method

.method static synthetic C(Lcom/unionpay/mobile/android/pro/views/y;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/y;Lcom/unionpay/mobile/android/model/c;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->s()Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->b(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/unionpay/mobile/android/pro/views/ad;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/unionpay/mobile/android/pro/views/ad;-><init>(Lcom/unionpay/mobile/android/pro/views/y;Lcom/unionpay/mobile/android/pro/pboc/engine/b;Lcom/unionpay/mobile/android/model/c;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/y;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/y;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/y;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->n()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/upviews/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/y;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/y;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/upwidget/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->x:Lcom/unionpay/mobile/android/upwidget/a;

    return-object p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/y;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/y;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/upwidget/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->w:Lcom/unionpay/mobile/android/upwidget/a;

    return-object p0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pro/views/y;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/unionpay/mobile/android/pro/views/y;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"uuid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, p2, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->v:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->v:I

    return-void
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/widgets/m;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-object p0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pro/views/y;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/pro/views/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->q:Ljava/lang/String;

    return-object p0
.end method

.method private f(I)V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->s:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    const-string v1, "query"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v0, v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->u:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->u:I

    return-void
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/pro/views/y;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->j:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->w:Lcom/unionpay/mobile/android/upwidget/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/a;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "2"

    const-string v3, "1"

    invoke-static {v2, v3, v1, p1}, Lcom/unionpay/mobile/android/nocard/views/bh;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p0, v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic h(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic i(Lcom/unionpay/mobile/android/pro/views/y;)Ljava/util/HashMap;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->c()Ljava/util/HashMap;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/a;->c()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic j(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic k(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic l(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic m(Lcom/unionpay/mobile/android/pro/views/y;)I
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->v:I

    return v0
.end method

.method static synthetic n(Lcom/unionpay/mobile/android/pro/views/y;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic o(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic p(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic q(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic r(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic s(Lcom/unionpay/mobile/android/pro/views/y;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/y;->d(I)V

    return-void
.end method

.method static synthetic t(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic u(Lcom/unionpay/mobile/android/pro/views/y;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic v(Lcom/unionpay/mobile/android/pro/views/y;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->D:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic w(Lcom/unionpay/mobile/android/pro/views/y;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic x(Lcom/unionpay/mobile/android/pro/views/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/y;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lcom/unionpay/mobile/android/pro/views/y;)V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->i()V

    return-void
.end method

.method static synthetic z(Lcom/unionpay/mobile/android/pro/views/y;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sms elements:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object p1, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->C:Z

    iget v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    const/4 v3, 0x3

    if-eq v1, v3, :cond_14

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "01"

    const-string v7, "status"

    const/16 v8, 0x8

    if-eq v1, v4, :cond_a

    const/4 v3, 0x6

    if-eq v1, v3, :cond_6

    const/4 v0, 0x7

    const-string v2, "options"

    if-eq v1, v0, :cond_4

    if-eq v1, v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v7}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->v:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->B:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "empty_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->i()V

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->i()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v1, p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->b(I)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v2, p1, Lcom/unionpay/mobile/android/model/b;->K:Z

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_8

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/pro/views/y;->d(I)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_9

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->d(I)V

    :cond_9
    :goto_1
    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    return-void

    :cond_a
    invoke-static {p1, v7}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->r:Ljava/lang/String;

    iget v4, p0, Lcom/unionpay/mobile/android/pro/views/y;->u:I

    if-lez v4, :cond_b

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->s:I

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->f(I)V

    return-void

    :cond_b
    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->r:Ljava/lang/String;

    const-string v4, "00"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->i()V

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "result"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->H:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "openupgrade_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_url"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->V:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_request"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "succ_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->b(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->a(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a;->f()V

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_succeed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->f:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v0, "success"

    iput-object v0, p1, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->j()V

    return-void

    :cond_d
    invoke-virtual {p0, v8}, Lcom/unionpay/mobile/android/pro/views/y;->d(I)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->r:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "fail_msg"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    if-ne v0, v3, :cond_f

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->a(Ljava/lang/String;)V

    return-void

    :cond_f
    new-instance v0, Lcom/unionpay/mobile/android/pro/views/af;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pro/views/af;-><init>(Lcom/unionpay/mobile/android/pro/views/y;)V

    new-instance v1, Lcom/unionpay/mobile/android/pro/views/ag;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/pro/views/ag;-><init>(Lcom/unionpay/mobile/android/pro/views/y;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->F:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v1, v0, v5}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    iget p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->u:I

    if-gtz p1, :cond_13

    iget p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->s:I

    if-ne p1, v3, :cond_12

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/unionpay/mobile/android/pro/views/y;->a(Ljava/lang/String;Z)V

    return-void

    :cond_12
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->a(Ljava/lang/String;)V

    :cond_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/mobile/android/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    const-string v0, "qn"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-static {p1}, Lcom/unionpay/mobile/android/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    :cond_15
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_16

    goto :goto_2

    :cond_16
    const/16 p1, 0x14

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->u:I

    iget p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->f(I)V

    return-void

    :cond_17
    :goto_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/y;->b(I)V

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->i()V

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    sget v0, Lcom/unionpay/mobile/android/global/b;->p:I

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->C:Z

    return p1
.end method

.method protected final b()V
    .locals 5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->A:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final c()V
    .locals 14

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->d:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v0, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->p:Lcom/unionpay/mobile/android/model/e;

    const-string v2, "instalment"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->p:Lcom/unionpay/mobile/android/model/e;

    check-cast v1, Lcom/unionpay/mobile/android/model/f;

    const-string v3, "promotion"

    invoke-virtual {v1, v3}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v4, "promotion_instalment_msgbox"

    invoke-virtual {v1, v4}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v3, Lcom/unionpay/mobile/android/model/b;->aU:Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/y;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/y;->q:Ljava/lang/String;

    invoke-direct {v1, v3, v0, p0, v4}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->b:Lcom/unionpay/mobile/android/widgets/m;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->aU:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v3}, Lcom/unionpay/mobile/android/upviews/a;->a(Lcom/unionpay/mobile/android/widgets/m;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v9, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->z:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    :cond_2
    new-instance v13, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c()J

    move-result-wide v3

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v0, Lcom/unionpay/mobile/android/model/b;->aq:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/unionpay/mobile/android/pro/views/y;->q:Ljava/lang/String;

    move-object v0, v13

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v13, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v9, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->h()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->am:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/y;->I:Landroid/view/View$OnClickListener;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/unionpay/mobile/android/pro/views/y;->q:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_agree_user_protocol"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->x:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->am:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->am:Lorg/json/JSONObject;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/unionpay/mobile/android/pro/views/y;->q:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_remember_bankNO"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->w:Lcom/unionpay/mobile/android/upwidget/a;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->w:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONObject;

    const-string v4, "label"

    invoke-static {v2, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->y:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->y:Landroid/widget/TextView;

    invoke-static {}, Lcom/unionpay/mobile/android/pro/views/y;->o()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->y:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    :cond_7
    :goto_0
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v4, 0x7d8

    invoke-virtual {v2, v4, v12, v12}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/y;->y:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->y:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/y;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->d:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"card\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->N:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v1}, Lcom/unionpay/mobile/android/model/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cmd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ele:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uppay"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/y;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->t:I

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "action_resp_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "action_resp_message"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2, p1}, Lcom/unionpay/mobile/android/pro/views/y;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/unionpay/mobile/android/pro/views/y;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/pro/views/y;->b(I)V

    :goto_0
    return v1
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/y;->m()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->br:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/y;->a(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/y;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method public s()Lcom/unionpay/mobile/android/pro/pboc/engine/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
