.class public Lcmb/pb/util/CMBKeyboardFunc;
.super Ljava/lang/Object;


# static fields
.field public static b:J = 0x0L

.field private static c:Ljava/lang/String; = "CMBKeyboardFunc"


# instance fields
.field a:Landroid/os/Handler;

.field private d:Z

.field private e:I

.field private f:Landroid/app/Activity;

.field private g:Landroid/webkit/WebView;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private final k:Landroid/os/Handler;

.field private l:Lcmb/pb/util/f;

.field private m:Lcmb/pb/ui/g;

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Landroid/app/Activity;

.field private w:I

.field private x:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmb/pb/util/CMBKeyboardFunc;->d:Z

    iput v0, p0, Lcmb/pb/util/CMBKeyboardFunc;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->f:Landroid/app/Activity;

    iput-object v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->g:Landroid/webkit/WebView;

    const-string v2, ""

    iput-object v2, p0, Lcmb/pb/util/CMBKeyboardFunc;->h:Ljava/lang/String;

    iput v0, p0, Lcmb/pb/util/CMBKeyboardFunc;->i:I

    iput v0, p0, Lcmb/pb/util/CMBKeyboardFunc;->j:I

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcmb/pb/util/CMBKeyboardFunc;->k:Landroid/os/Handler;

    iput-object v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->l:Lcmb/pb/util/f;

    iput-object v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->m:Lcmb/pb/ui/g;

    iput v0, p0, Lcmb/pb/util/CMBKeyboardFunc;->n:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcmb/pb/util/CMBKeyboardFunc;->o:Z

    iput-object v2, p0, Lcmb/pb/util/CMBKeyboardFunc;->p:Ljava/lang/String;

    iput v0, p0, Lcmb/pb/util/CMBKeyboardFunc;->q:I

    iput-object v2, p0, Lcmb/pb/util/CMBKeyboardFunc;->r:Ljava/lang/String;

    const-string v3, "NO"

    iput-object v3, p0, Lcmb/pb/util/CMBKeyboardFunc;->s:Ljava/lang/String;

    iput-object v2, p0, Lcmb/pb/util/CMBKeyboardFunc;->t:Ljava/lang/String;

    iput-object v2, p0, Lcmb/pb/util/CMBKeyboardFunc;->u:Ljava/lang/String;

    iput-object v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->v:Landroid/app/Activity;

    iput v0, p0, Lcmb/pb/util/CMBKeyboardFunc;->w:I

    new-instance v0, Lcmb/pb/util/b;

    invoke-direct {v0, p0}, Lcmb/pb/util/b;-><init>(Lcmb/pb/util/CMBKeyboardFunc;)V

    iput-object v0, p0, Lcmb/pb/util/CMBKeyboardFunc;->a:Landroid/os/Handler;

    new-instance v0, Lcmb/pb/util/d;

    invoke-direct {v0, p0}, Lcmb/pb/util/d;-><init>(Lcmb/pb/util/CMBKeyboardFunc;)V

    iput-object v0, p0, Lcmb/pb/util/CMBKeyboardFunc;->x:Ljava/lang/Runnable;

    iput-object p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->f:Landroid/app/Activity;

    iput-object p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->v:Landroid/app/Activity;

    return-void
.end method

.method private a(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method static synthetic a(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->g:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcmb/pb/util/CMBKeyboardFunc;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcmb/pb/util/CMBKeyboardFunc;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<text>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</text>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<isFinished>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</isFinished>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<length>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</length>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<isChanged>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</isChanged>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcmb/pb/util/CMBKeyboardFunc;I)V
    .locals 0

    iput p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->w:I

    return-void
.end method

.method static synthetic a(Lcmb/pb/util/CMBKeyboardFunc;Lcmb/pb/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->m:Lcmb/pb/ui/g;

    return-void
.end method

.method static synthetic a(Lcmb/pb/util/CMBKeyboardFunc;Lcmb/pb/util/f;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->l:Lcmb/pb/util/f;

    return-void
.end method

.method static synthetic a(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->s:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcmb/pb/util/CMBKeyboardFunc;Z)V
    .locals 0

    iput-boolean p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->o:Z

    return-void
.end method

.method static synthetic a(Lcmb/pb/util/CMBKeyboardFunc;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcmb/pb/util/CMBKeyboardFunc;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\')"

    const-string v1, "\',\'"

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:CMBLS.cmbKeyboard.successCallback(\'"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcmb/pb/util/CMBKeyboardFunc;->g:Landroid/webkit/WebView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcmb/pb/util/CMBKeyboardFunc;->g:Landroid/webkit/WebView;

    :goto_0
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:CMBLS.cmbKeyboard.failCallback(\'"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcmb/pb/util/CMBKeyboardFunc;->g:Landroid/webkit/WebView;

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcmb/pb/util/CMBKeyboardFunc;->g:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcmb/pb/util/CMBKeyboardFunc;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendResult Exception:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic b(Lcmb/pb/util/CMBKeyboardFunc;)I
    .locals 0

    iget p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->w:I

    return p0
.end method

.method static synthetic b(Lcmb/pb/util/CMBKeyboardFunc;I)V
    .locals 0

    iput p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->j:I

    return-void
.end method

.method static synthetic b(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->t:Ljava/lang/String;

    return-void
.end method

.method private b()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcmb/pb/util/CMBKeyboardFunc;->b:J

    sub-long v2, v0, v2

    sput-wide v0, Lcmb/pb/util/CMBKeyboardFunc;->b:J

    const-wide/16 v0, 0x3e8

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcmb/pb/util/CMBKeyboardFunc;)I
    .locals 0

    iget p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->n:I

    return p0
.end method

.method static synthetic d(Lcmb/pb/util/CMBKeyboardFunc;)I
    .locals 0

    iget p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->j:I

    return p0
.end method

.method static synthetic e(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->f:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcmb/pb/util/CMBKeyboardFunc;)Lcmb/pb/ui/g;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->m:Lcmb/pb/ui/g;

    return-object p0
.end method

.method static synthetic i(Lcmb/pb/util/CMBKeyboardFunc;)Lcmb/pb/util/f;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->l:Lcmb/pb/util/f;

    return-object p0
.end method

.method static synthetic j(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->v:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic k(Lcmb/pb/util/CMBKeyboardFunc;)Z
    .locals 0

    iget-boolean p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->o:Z

    return p0
.end method

.method static synthetic l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcmb/pb/util/CMBKeyboardFunc;)Z
    .locals 0

    iget-boolean p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->d:Z

    return p0
.end method

.method static synthetic n(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/CMBKeyboardFunc;->s:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public HandleUrlCall(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcmb/pb/util/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iput-object p1, p0, Lcmb/pb/util/CMBKeyboardFunc;->g:Landroid/webkit/WebView;

    invoke-static {p2}, Lcmb/pb/util/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cmbKeyboard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0}, Lcmb/pb/util/CMBKeyboardFunc;->b()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    iput-boolean v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->o:Z

    invoke-static {p2}, Lcmb/pb/util/j;->a(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcmb/pb/util/CMBKeyboardFunc;->h:Ljava/lang/String;

    const-string/jumbo p2, "password"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string/jumbo v2, "true"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->d:Z

    :cond_4
    const-string p2, "keyboard"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string/jumbo v2, "pointy"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "scrollTop"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcmb/pb/util/CMBKeyboardFunc;->f:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {p0, v4, v2}, Lcmb/pb/util/CMBKeyboardFunc;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcmb/pb/util/CMBKeyboardFunc;->n:I

    const-string v2, "clientno"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcmb/pb/util/CMBKeyboardFunc;->u:Ljava/lang/String;

    if-eqz p2, :cond_5

    const-string v2, "number"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p2, Lcmb/pb/ui/f;->c:Lcmb/pb/ui/f;

    :goto_0
    invoke-virtual {p2}, Lcmb/pb/ui/f;->a()I

    move-result p2

    iput p2, p0, Lcmb/pb/util/CMBKeyboardFunc;->e:I

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    const-string v2, "number_dot"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p2, Lcmb/pb/ui/f;->d:Lcmb/pb/ui/f;

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    const-string v2, "number_x"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p2, Lcmb/pb/ui/f;->e:Lcmb/pb/ui/f;

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    const-string v2, "number_change"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object p2, Lcmb/pb/ui/f;->f:Lcmb/pb/ui/f;

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_b

    const-string v2, "normal"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object p2, Lcmb/pb/ui/f;->b:Lcmb/pb/ui/f;

    goto :goto_0

    :goto_1
    const-string p2, "hint"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_9

    move-object p2, v3

    goto :goto_2

    :cond_9
    invoke-static {p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    const-string v2, "length"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    :goto_3
    const-string/jumbo v2, "text"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    move-object v3, p1

    :goto_4
    iput-object p2, p0, Lcmb/pb/util/CMBKeyboardFunc;->p:Ljava/lang/String;

    iput v0, p0, Lcmb/pb/util/CMBKeyboardFunc;->q:I

    iput-object v3, p0, Lcmb/pb/util/CMBKeyboardFunc;->r:Ljava/lang/String;

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcmb/pb/util/e;

    invoke-direct {p2, p0}, Lcmb/pb/util/e;-><init>(Lcmb/pb/util/CMBKeyboardFunc;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return v1

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "<data><stateCode>99</stateCode><description>\u4e0d\u652f\u6301\u7684\u952e\u76d8\u7c7b\u578b\u3002("

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")</description>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</data>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcmb/pb/util/CMBKeyboardFunc;->h:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1}, Lcmb/pb/util/CMBKeyboardFunc;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public callKeyBoardActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "IsPassword"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->p:Ljava/lang/String;

    const-string v2, "Hint"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->e:I

    const-string v2, "KeyboardType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->q:I

    const-string v2, "Length"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->r:Ljava/lang/String;

    const-string v2, "OldText"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "UseHandler"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->f:Landroid/app/Activity;

    const-class v2, Lcmb/pb/ui/PBKeyboardActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcmb/pb/util/CMBKeyboardFunc;->f:Landroid/app/Activity;

    const/16 v2, 0x251e

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
