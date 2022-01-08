.class public final Lcom/unionpay/mobile/android/nocard/views/at;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# instance fields
.field private A:Lcom/unionpay/mobile/android/upviews/a;

.field private B:Lcom/unionpay/mobile/android/upviews/a;

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/view/View$OnClickListener;

.field private I:Landroid/view/View$OnClickListener;

.field private J:Landroid/view/View$OnClickListener;

.field r:Landroid/widget/LinearLayout;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Lcom/unionpay/mobile/android/upwidget/a;

.field private y:Lcom/unionpay/mobile/android/upwidget/a;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/at;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    const-string p1, "00"

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    const/16 p2, 0x14

    iput p2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    const/4 p2, 0x5

    iput p2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->w:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->y:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->C:Z

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->D:Z

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/au;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/nocard/views/au;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->F:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/av;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/nocard/views/av;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->G:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/aw;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/nocard/views/aw;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->H:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/ax;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/nocard/views/ax;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->I:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/ay;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/nocard/views/ay;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->J:Landroid/view/View$OnClickListener;

    const/4 p1, 0x6

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->f:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->K:Z

    if-eqz p1, :cond_0

    const-string p1, "bankpay_phoneNO_change"

    goto :goto_0

    :cond_0
    const-string p1, "bankpay"

    :goto_0
    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->K:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->D:Z

    const p1, -0x10100c

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->e()V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upviews/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/at;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/at;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/at;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->j:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p0, p0, Lcom/unionpay/mobile/android/model/b;->E:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/nocard/views/at;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upviews/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/at;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->E:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/at;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upwidget/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->y:Lcom/unionpay/mobile/android/upwidget/a;

    return-object p0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upwidget/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/az;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/nocard/views/az;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/ba;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/ba;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x9

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

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

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, p2, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->w:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->w:I

    return-void
.end method

.method private static d(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "reopen_flag"

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->j:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/a;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "1"

    invoke-static {v2, v2, v1, p1}, Lcom/unionpay/mobile/android/nocard/views/bh;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/nocard/views/at;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->C:Z

    return p0
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/nocard/views/at;)I
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->w:I

    return v0
.end method

.method private f(I)V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    const-string v1, "query"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v0, v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    return-void
.end method

.method static synthetic g(Lcom/unionpay/mobile/android/nocard/views/at;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->j:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v0, "reopenrules"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/unionpay/mobile/android/nocard/views/at;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    return v0
.end method

.method static synthetic i(Lcom/unionpay/mobile/android/nocard/views/at;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private s()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

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
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;)V

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

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object p1, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->D:Z

    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1b

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1b

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v7, "01"

    const-string v8, "status"

    if-eq v1, v5, :cond_e

    const/16 v3, 0x10

    if-eq v1, v3, :cond_a

    const/4 v3, 0x5

    const/4 v4, 0x6

    const-string v5, "options"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {p1, v8}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->w:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->E:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "empty_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_3
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->i()V

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->i()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v1, p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->b(I)V

    return-void

    :cond_4
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0, v4, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(ILcom/unionpay/mobile/android/model/e;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/nocard/views/at;->d(I)V

    :cond_6
    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->i()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v1, p1, v2}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/nocard/views/at;->b(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v2, v1, Lcom/unionpay/mobile/android/model/b;->K:Z

    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object p1

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p0, v4, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(ILcom/unionpay/mobile/android/model/e;)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_9

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/nocard/views/at;->d(I)V

    :cond_9
    :goto_0
    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    return-void

    :cond_a
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/m;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :cond_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "instalment_empty_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    const-string v1, "instalment"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v1, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONObject;)V

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    :cond_d
    :goto_2
    return-void

    :cond_e
    invoke-static {p1, v8}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Lorg/json/JSONObject;)Z

    move-result v1

    const-string v5, "fail_msg"

    if-eqz v1, :cond_f

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Ljava/lang/String;)V

    return-void

    :cond_f
    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    if-lez v1, :cond_10

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->f(I)V

    return-void

    :cond_10
    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    const-string v7, "00"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    if-eq v1, v3, :cond_13

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->i()V

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "result"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->H:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "openupgrade_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_url"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->V:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_request"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "succ_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->b(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->a(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a;->f()V

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_succeed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->f:Z

    if-eqz p1, :cond_12

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aQ:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v0, "success"

    iput-object v0, p1, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->j()V

    return-void

    :cond_12
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->d(I)V

    return-void

    :cond_13
    iput-boolean v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->C:Z

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->s()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->e(Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->s:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    if-ne v0, v4, :cond_15

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;)V

    return-void

    :cond_15
    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/bb;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/nocard/views/bb;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/bc;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/bc;-><init>(Lcom/unionpay/mobile/android/nocard/views/at;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->F:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->ab:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->ac:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v1, v0, v6}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->ab:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    iget p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    if-gtz p1, :cond_1a

    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->c(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    :cond_18
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->t:I

    if-ne v0, v4, :cond_19

    invoke-virtual {p0, p1, v2}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;Z)V

    return-void

    :cond_19
    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;)V

    :cond_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

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

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-static {p1}, Lcom/unionpay/mobile/android/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    :cond_1c
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_1d

    goto :goto_3

    :cond_1d
    const/16 p1, 0x14

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->v:I

    iget p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->f(I)V

    return-void

    :cond_1e
    :goto_3
    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/nocard/views/at;->b(I)V

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->i()V

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    sget v0, Lcom/unionpay/mobile/android/global/b;->p:I

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->D:Z

    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Lorg/json/JSONObject;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Ljava/lang/String;)V

    return v2

    :cond_0
    return v0
.end method

.method protected final b()V
    .locals 5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->A:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    const-string v1, "instalment"

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/p;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/p;->b(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    return-void
.end method

.method protected final c()V
    .locals 20

    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v0, v12}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a(Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;)V

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    const/4 v11, -0x1

    invoke-direct {v0, v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->m:Landroid/widget/RelativeLayout;

    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v12, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->p:Lcom/unionpay/mobile/android/model/e;

    const-string v2, "instalment"

    if-eqz v1, :cond_0

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->p:Lcom/unionpay/mobile/android/model/e;

    check-cast v1, Lcom/unionpay/mobile/android/model/f;

    const-string v3, "promotion"

    invoke-virtual {v1, v3}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v4, "promotion_instalment_msgbox"

    invoke-virtual {v1, v4}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v3, Lcom/unionpay/mobile/android/model/b;->aU:Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    iget-object v4, v12, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v12, v4}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;)V

    iput-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->aU:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v3}, Lcom/unionpay/mobile/android/upviews/a;->a(Lcom/unionpay/mobile/android/widgets/m;Lorg/json/JSONObject;)V

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->bt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->d(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v10, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    :cond_2
    move-object/from16 v16, v9

    :goto_0
    new-instance v8, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c()J

    move-result-wide v3

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v0, Lcom/unionpay/mobile/android/model/b;->aq:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v17, 0x0

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v0, Lcom/unionpay/mobile/android/model/b;->ad:Lorg/json/JSONArray;

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v19, v5

    move-object/from16 v5, p0

    move-object v14, v8

    move/from16 v8, v17

    move-object/from16 v9, v16

    move-object v13, v10

    move-object/from16 v10, v19

    const/4 v15, -0x1

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZZLcom/unionpay/mobile/android/widgets/z;Lorg/json/JSONArray;Ljava/lang/String;)V

    iput-object v14, v12, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v15, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v13, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v15, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/unionpay/mobile/android/nocard/views/at;->h()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    if-nez v2, :cond_3

    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->am:Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    iget-object v5, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    iget-object v6, v12, Lcom/unionpay/mobile/android/nocard/views/at;->J:Landroid/view/View$OnClickListener;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v12, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_agree_user_protocol"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->y:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->am:Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    iget-object v5, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->am:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v12, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_remember_bankNO"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v3, v5, v7, v6}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->x:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONObject;

    const-string v5, "label"

    invoke-static {v3, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    sget v3, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    invoke-static {}, Lcom/unionpay/mobile/android/nocard/views/at;->o()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3, v15, v15}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v12, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    iget-object v3, v12, Lcom/unionpay/mobile/android/nocard/views/at;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v15, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->d:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, v12, Lcom/unionpay/mobile/android/nocard/views/at;->m:Landroid/widget/RelativeLayout;

    iget-object v1, v12, Lcom/unionpay/mobile/android/nocard/views/at;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->h()Z

    move-result v0

    const-string v1, "\""

    const-string v2, "\"card\":\""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->aq:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget v3, v3, Lcom/unionpay/mobile/android/model/b;->N:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v2}, Lcom/unionpay/mobile/android/model/c;->a()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->L:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->G:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/at;->m()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->G:Lorg/json/JSONObject;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(I)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->B:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->A:Lcom/unionpay/mobile/android/upviews/a;

    const-string v1, "promotion"

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/unionpay/mobile/android/widgets/aj;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/aj;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\"\""

    :goto_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\"promotion\":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "instalment"

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->u:I

    return-void
.end method
