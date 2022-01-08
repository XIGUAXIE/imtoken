.class public final Lcom/unionpay/mobile/android/pro/views/a;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# static fields
.field private static M:Ljava/sql/Date;

.field private static N:Ljava/lang/String;

.field private static P:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static Q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/unionpay/mobile/android/widgets/ay;

.field private B:Ljava/lang/String;

.field private C:Lcom/unionpay/mobile/android/hce/c;

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Landroid/os/Handler$Callback;

.field private H:Landroid/os/Handler;

.field private I:Landroid/view/View$OnClickListener;

.field private J:Landroid/view/View$OnClickListener;

.field private K:Landroid/view/View$OnClickListener;

.field private L:Landroid/view/View$OnClickListener;

.field private O:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field s:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

.field private t:I

.field private u:I

.field private v:Landroid/widget/TextView;

.field private w:Z

.field private x:Lcom/unionpay/mobile/android/upviews/a;

.field private y:Lcom/unionpay/mobile/android/upviews/a;

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    sput-object v0, Lcom/unionpay/mobile/android/pro/views/a;->M:Ljava/sql/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/a;->M:Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/mobile/android/pro/views/a;->N:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    const/16 p1, 0x14

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->t:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    const-string p1, "1.9"

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->r:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->v:Landroid/widget/TextView;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->w:Z

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->x:Lcom/unionpay/mobile/android/upviews/a;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->z:Landroid/os/Handler;

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->D:I

    iput-boolean p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->F:Z

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/b;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/b;-><init>(Lcom/unionpay/mobile/android/pro/views/a;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->G:Landroid/os/Handler$Callback;

    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->G:Landroid/os/Handler$Callback;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->H:Landroid/os/Handler;

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/c;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/c;-><init>(Lcom/unionpay/mobile/android/pro/views/a;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->I:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/d;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/d;-><init>(Lcom/unionpay/mobile/android/pro/views/a;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->J:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/e;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/e;-><init>(Lcom/unionpay/mobile/android/pro/views/a;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->K:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/f;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/f;-><init>(Lcom/unionpay/mobile/android/pro/views/a;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->L:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->O:Ljava/lang/String;

    const/4 p1, 0x6

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->f:I

    const-string p1, "hcepay"

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->q:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/mobile/android/pro/views/a;->s:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->z:Landroid/os/Handler;

    sget-object p1, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    iget-object p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget p2, p2, Lcom/unionpay/mobile/android/model/b;->bc:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/hce/c;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->C:Lcom/unionpay/mobile/android/hce/c;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->K:Z

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->w:Z

    const p1, -0x10100c

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/a;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->H:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 13

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_0

    const-string v1, "instalment"

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "pan"

    const-string v5, "type"

    invoke-static {v2, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "label"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/a;->C:Lcom/unionpay/mobile/android/hce/c;

    invoke-virtual {v6}, Lcom/unionpay/mobile/android/hce/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/a;->C:Lcom/unionpay/mobile/android/hce/c;

    invoke-virtual {v6}, Lcom/unionpay/mobile/android/hce/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c()J

    move-result-wide v4

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->C:Lcom/unionpay/mobile/android/hce/c;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/hce/c;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v11, v1, Lcom/unionpay/mobile/android/model/b;->ad:Lorg/json/JSONArray;

    iget-object v12, p0, Lcom/unionpay/mobile/android/pro/views/a;->q:Ljava/lang/String;

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v12}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZZLcom/unionpay/mobile/android/widgets/z;Lorg/json/JSONArray;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->x:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->x:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivity;

    const-class v1, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/a;->b(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unionpay/mobile/android/pro/views/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/g;-><init>(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;)V
    .locals 7

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    invoke-static {v4, v3}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/hce/c;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->C:Lcom/unionpay/mobile/android/hce/c;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/util/HashMap;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->N:Ljava/lang/String;

    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/sql/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge v7, v3, :cond_0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "%08d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    sget-object v4, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v5, ""

    const-string v6, "9F26"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v6, "9F27"

    const-string v7, "80"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v6, "9F10"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v6, "9F37"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v4, "9F36"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v4, "95"

    const-string v7, "0000000800"

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v7, "9A"

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v3, "9C"

    const-string v10, "45"

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v10, "000000000000"

    const-string v11, "9F02"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v12, "0156"

    const-string v13, "5F2A"

    invoke-virtual {v2, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v14, "82"

    invoke-virtual {v2, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v14, "9F1A"

    invoke-virtual {v2, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v15, "9F03"

    invoke-virtual {v2, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v10, "9F33"

    const-string v9, "A04000"

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "9F34"

    const-string v10, "420300"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "9F35"

    const-string v10, "34"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "9F1E"

    const-string v10, "3030303030303030"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "84"

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "9F09"

    const-string v10, "0001"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "9F41"

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "91"

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "71"

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "72"

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "DF31"

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "9F74"

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "9F63"

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v9, "8A"

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v9, "9F66"

    const-string v10, "26C00000"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/mobile/android/pro/views/a;->t()Landroid/os/Bundle;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v10, "trans_amt"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v2, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v10, "trans currcy code"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v10, "trans_type"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v10, "CUR"

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    iget-object v0, v1, Lcom/unionpay/mobile/android/pro/views/a;->C:Lcom/unionpay/mobile/android/hce/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/hce/c;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/unionpay/mobile/android/pro/views/a;->C:Lcom/unionpay/mobile/android/hce/c;

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/hce/c;->g()Lcom/unionpay/mobile/android/hce/service/a;

    move-result-object v3

    iget-object v4, v1, Lcom/unionpay/mobile/android/pro/views/a;->C:Lcom/unionpay/mobile/android/hce/c;

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/hce/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/unionpay/mobile/android/hce/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/unionpay/mobile/android/hce/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    new-instance v2, Lcom/unionpay/mobile/android/hce/b;

    const/16 v6, 0x7d4

    iget-object v7, v1, Lcom/unionpay/mobile/android/pro/views/a;->H:Landroid/os/Handler;

    invoke-direct {v2, v6, v5, v7}, Lcom/unionpay/mobile/android/hce/b;-><init>(ILjava/lang/String;Landroid/os/Handler;)V

    invoke-interface {v3, v4, v0, v5, v2}, Lcom/unionpay/mobile/android/hce/service/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unionpay/mobile/android/hce/service/b;)V

    iget-object v0, v1, Lcom/unionpay/mobile/android/pro/views/a;->H:Landroid/os/Handler;

    const/16 v2, 0x7d6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lcom/unionpay/mobile/android/pro/views/a;->H:Landroid/os/Handler;

    iget-object v3, v1, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget v3, v3, Lcom/unionpay/mobile/android/model/b;->be:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object v0, v1, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/String;Z)V

    return v2
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method private static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic d(Lorg/json/JSONObject;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "5F34"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "57"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "9F6C"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "9F5D"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "5F20"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v3, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    :goto_2
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v0, "9F10"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x4

    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x30

    int-to-byte p0, p0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/upviews/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->x:Lcom/unionpay/mobile/android/upviews/a;

    return-object p0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x9

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

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

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, p2, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->D:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->D:I

    return-void
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->E:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/pro/views/a;)Ljava/util/HashMap;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->x:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->c()Ljava/util/HashMap;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

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

.method static synthetic g(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic g(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic i(Lcom/unionpay/mobile/android/pro/views/a;)I
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->D:I

    return v0
.end method

.method static synthetic j(Lcom/unionpay/mobile/android/pro/views/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic k(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic l(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic m(Lcom/unionpay/mobile/android/pro/views/a;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/a;->d(I)V

    return-void
.end method

.method static synthetic n(Lcom/unionpay/mobile/android/pro/views/a;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->n()Z

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/unionpay/mobile/android/pro/views/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->F:Z

    return p0
.end method

.method static synthetic p(Lcom/unionpay/mobile/android/pro/views/a;)V
    .locals 2

    const/16 v0, 0x68

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "cardsecret"

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic r(Lcom/unionpay/mobile/android/pro/views/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic s(Lcom/unionpay/mobile/android/pro/views/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->q:Ljava/lang/String;

    return-object p0
.end method

.method private s()V
    .locals 4

    const/16 v0, 0x67

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    const-string v2, "query"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->t:I

    return-void
.end method

.method private static t()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action_resp_code"

    const-string v2, "0000"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic t(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/widgets/m;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-object p0
.end method

.method static synthetic u(Lcom/unionpay/mobile/android/pro/views/a;)I
    .locals 1

    const/16 v0, 0x65

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    return v0
.end method

.method static synthetic v(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic w(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic x(Lcom/unionpay/mobile/android/pro/views/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/a;->z:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/unionpay/mobile/android/pro/views/a;->t()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v2, "PIN"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v1, "AN1"

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->C:Lcom/unionpay/mobile/android/hce/c;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/hce/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/StringBuffer;)V

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v2, "DCD"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->bf:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->s:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/pro/views/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->B:Ljava/lang/String;

    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v1, "5F34"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v3, "5F34"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v3, "5F34"

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v2, "5F34"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v2, "57"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v2, "57"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v3, "TD2"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "D"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "F"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    sget-object v1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v4, "AN1"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v2, "ED"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_3
    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v1, "AMT"

    sget-object v2, Lcom/unionpay/mobile/android/pro/views/a;->P:Ljava/util/HashMap;

    const-string v3, "9F02"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pan="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v2, "AN1"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&pin="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v2, "PIN"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&icc_data="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v2, "DCD"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&card_seq_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v2, "5F34"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&auth_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->bg:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mac"

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "md5"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v2, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/a;->B:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "v"

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cmd"

    const-string v4, "pay"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "params"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "encrypt_key_field"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pay_type"

    const-string v4, "2"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pay_mode"

    const-string v4, "1"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bind"

    const-string v4, "no"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "carrier_tp"

    const-string v4, "9"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "carrier_app_tp"

    const-string v4, "0"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sign"

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pan"

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v4, "AN1"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v1, "ED"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p1, "expire"

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v4, "ED"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    sget-object p1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v1, "TD2"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p1, "track2_data"

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/a;->Q:Ljava/util/HashMap;

    const-string v4, "TD2"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_8

    const-string p1, "pan"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pin"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p0, Lcom/unionpay/mobile/android/pro/views/a;->s:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p2, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "action_resp_message"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    :try_start_3
    const-string p1, "action_resp_code"

    const-string p2, "10019"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .locals 0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 7

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    const-string v1, "options"

    const/16 v2, 0x8

    if-eq v0, v2, :cond_12

    const/16 v3, 0x9

    const-string v4, "01"

    const-string v5, "status"

    if-eq v0, v3, :cond_e

    const/16 v1, 0x65

    if-eq v0, v1, :cond_a

    const/16 v3, 0x67

    const/4 v6, 0x1

    if-eq v0, v3, :cond_2

    const/16 v2, 0x68

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "encrypt_key"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->bf:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "auth_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/unionpay/mobile/android/model/b;->bg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->x:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a;->a()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lcom/unionpay/mobile/android/pro/views/a;->F:Z

    iget-object p1, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iput v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/util/HashMap;)Z

    return-void

    :cond_2
    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail_msg"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/unionpay/mobile/android/pro/views/a;->t:I

    if-lez v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pro/views/a;->s()V

    return-void

    :cond_3
    const/16 v3, 0x64

    iput v3, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    const-string v4, "00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->i()V

    if-eqz v4, :cond_7

    iput v3, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "result"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->H:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "openupgrade_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_url"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->V:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_request"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "succ_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->b(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->a(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->x:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a;->f()V

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_succeed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/d;

    check-cast v0, Lcom/unionpay/mobile/android/hce/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/hce/c;->h()Landroid/content/ServiceConnection;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->f:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v0, "success"

    iput-object v0, p1, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->j()V

    return-void

    :cond_6
    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/pro/views/a;->d(I)V

    return-void

    :cond_7
    iput-boolean v6, p0, Lcom/unionpay/mobile/android/pro/views/a;->F:Z

    const-string p1, "03"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_fail"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    iget p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->t:I

    if-gtz p1, :cond_9

    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/a;->b(I)V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

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

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-static {p1}, Lcom/unionpay/mobile/android/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    :cond_b
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_c

    goto :goto_2

    :cond_c
    const/16 p1, 0x14

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->t:I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pro/views/a;->s()V

    return-void

    :cond_d
    :goto_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/a;->b(I)V

    return-void

    :cond_e
    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->D:I

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->E:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/unionpay/mobile/android/pro/views/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "empty_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->i()V

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;)V

    :cond_13
    :goto_3
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    sput-object v0, Lcom/unionpay/mobile/android/pro/views/a;->M:Ljava/sql/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/a;->M:Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/mobile/android/pro/views/a;->N:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/a;->N:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->O:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pro/views/a;->b(Ljava/util/HashMap;)Z

    move-result p1

    return p1
.end method

.method protected final b()V
    .locals 5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->A:Lcom/unionpay/mobile/android/widgets/ay;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->A:Lcom/unionpay/mobile/android/widgets/ay;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->u:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->F:Z

    :goto_0
    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    return-void
.end method

.method protected final c()V
    .locals 8

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a(Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v5, 0xa

    invoke-virtual {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/a;->p:Lcom/unionpay/mobile/android/model/e;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/a;->p:Lcom/unionpay/mobile/android/model/e;

    check-cast v5, Lcom/unionpay/mobile/android/model/f;

    const-string v6, "promotion"

    invoke-virtual {v5, v6}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v6, "instalment"

    invoke-virtual {v5, v6}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v7, "promotion_instalment_msgbox"

    invoke-virtual {v5, v7}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v6, Lcom/unionpay/mobile/android/model/b;->aU:Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v5, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/a;->d:Landroid/content/Context;

    iget-object v7, p0, Lcom/unionpay/mobile/android/pro/views/a;->q:Ljava/lang/String;

    invoke-direct {v5, v6, v2, p0, v7}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v2}, Lcom/unionpay/mobile/android/upviews/a;->a(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/a;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/unionpay/mobile/android/upviews/a;->b(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/a;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/unionpay/mobile/android/upviews/a;->c(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->aU:Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v6}, Lcom/unionpay/mobile/android/upviews/a;->a(Lcom/unionpay/mobile/android/widgets/m;Lorg/json/JSONObject;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/a;->y:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pro/views/a;->a(Landroid/widget/LinearLayout;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/a;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONObject;

    const-string v5, "label"

    invoke-static {v3, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->v:Landroid/widget/TextView;

    sget v3, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->v:Landroid/widget/TextView;

    invoke-static {}, Lcom/unionpay/mobile/android/pro/views/a;->o()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->v:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/a;->x:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3, v4, v4}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/a;->v:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/a;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/a;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->d:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/a;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "action_resp_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_resp_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/unionpay/mobile/android/pro/views/a;->a(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->x:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/a;->m()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/a;->a(I)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->x:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method
