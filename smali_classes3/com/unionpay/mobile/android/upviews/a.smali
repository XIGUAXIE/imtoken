.class public final Lcom/unionpay/mobile/android/upviews/a;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/unionpay/mobile/android/upwidget/q$a;
.implements Lcom/unionpay/mobile/android/widgets/aa$a;
.implements Lcom/unionpay/mobile/android/widgets/ah$a;
.implements Lcom/unionpay/mobile/android/widgets/aj$a;
.implements Lcom/unionpay/mobile/android/widgets/ap$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/upviews/a$a;,
        Lcom/unionpay/mobile/android/upviews/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unionpay/mobile/android/widgets/m;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/unionpay/mobile/android/widgets/z;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Lcom/unionpay/mobile/android/upviews/a$b;

.field private f:Z

.field private g:Z

.field private h:Lorg/json/JSONObject;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZLjava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZLjava/lang/String;B)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZLjava/lang/String;C)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZLjava/lang/String;C)V
    .locals 12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZZLcom/unionpay/mobile/android/widgets/z;Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZZLcom/unionpay/mobile/android/widgets/z;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 8

    move-object v7, p0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    iput-object v0, v7, Lcom/unionpay/mobile/android/upviews/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    iput-object v0, v7, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    iput-wide v1, v7, Lcom/unionpay/mobile/android/upviews/a;->d:J

    iput-object v0, v7, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/unionpay/mobile/android/upviews/a;->f:Z

    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/unionpay/mobile/android/upviews/a;->g:Z

    iput-object v0, v7, Lcom/unionpay/mobile/android/upviews/a;->h:Lorg/json/JSONObject;

    const-string v0, ""

    iput-object v0, v7, Lcom/unionpay/mobile/android/upviews/a;->i:Ljava/lang/String;

    move-object v0, p1

    iput-object v0, v7, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    move-wide v3, p3

    iput-wide v3, v7, Lcom/unionpay/mobile/android/upviews/a;->d:J

    move-object v0, p5

    iput-object v0, v7, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    move/from16 v0, p8

    iput-boolean v0, v7, Lcom/unionpay/mobile/android/upviews/a;->f:Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/unionpay/mobile/android/upviews/a;->setPadding(IIII)V

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/upviews/a;->setOrientation(I)V

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/upviews/a;->setBackgroundColor(I)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p6

    move v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    invoke-virtual/range {v0 .. v6}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;ZLcom/unionpay/mobile/android/widgets/z;Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;)V
    .locals 9

    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private a(Z)Lcom/unionpay/mobile/android/upviews/a$a;
    .locals 8

    new-instance v0, Lcom/unionpay/mobile/android/upviews/a$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/unionpay/mobile/android/upviews/a$a;-><init>(Lcom/unionpay/mobile/android/upviews/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unionpay/mobile/android/widgets/z;

    instance-of v5, v4, Lcom/unionpay/mobile/android/widgets/af;

    const/4 v6, -0x1

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/z;->c()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v7, v7, Lcom/unionpay/mobile/android/languages/c;->aE:Ljava/lang/String;

    aput-object v7, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v6, v4}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/z;->b()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v7, v7, Lcom/unionpay/mobile/android/languages/c;->aE:Ljava/lang/String;

    aput-object v7, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/z;->c()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/z;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v6, v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/z;->b()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/z;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    :goto_4
    iget-object v5, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    iget-object v5, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unionpay/mobile/android/widgets/z;

    instance-of v6, v5, Lcom/unionpay/mobile/android/widgets/ad;

    if-nez v6, :cond_7

    instance-of v5, v5, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-eqz v5, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v5}, Lcom/unionpay/mobile/android/widgets/z;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v5}, Lcom/unionpay/mobile/android/widgets/z;->f()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v5}, Lcom/unionpay/mobile/android/widgets/z;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-virtual {v0, v2, p1}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unionpay/mobile/android/widgets/z;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/unionpay/mobile/android/widgets/z;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/z;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/unionpay/mobile/android/upviews/a$a;
    .locals 7

    new-instance v0, Lcom/unionpay/mobile/android/upviews/a$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/unionpay/mobile/android/upviews/a$a;-><init>(Lcom/unionpay/mobile/android/upviews/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v2, "pin"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->c()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->r()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v3, v2}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->b()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->r()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    :cond_3
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/z;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uppay"

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v1, "sms"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ap;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/ap;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 2

    const-string v0, "promotion"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/aj;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/aj;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/aj;->b(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/m;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    iput-object p2, p0, Lcom/unionpay/mobile/android/upviews/a;->h:Lorg/json/JSONObject;

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/u;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/widgets/z;

    instance-of v2, v1, Lcom/unionpay/mobile/android/widgets/aa;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/unionpay/mobile/android/widgets/aa;

    invoke-virtual {v1, p1}, Lcom/unionpay/mobile/android/widgets/aa;->a(Lcom/unionpay/mobile/android/widgets/u;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/aa;->c()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    invoke-interface {p1, v0}, Lcom/unionpay/mobile/android/upviews/a$b;->a(Z)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/z;)V
    .locals 10

    instance-of p1, p1, Lcom/unionpay/mobile/android/widgets/ap;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    if-eqz v0, :cond_e

    if-nez p1, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    new-instance p1, Lcom/unionpay/mobile/android/upviews/a$a;

    const-string v0, ""

    invoke-direct {p1, p0, v0}, Lcom/unionpay/mobile/android/upviews/a$a;-><init>(Lcom/unionpay/mobile/android/upviews/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v2, "mobile"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v3, "pan"

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v4, "card"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v5, "area_code"

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/z;->c()Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Object;

    sget-object v9, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v9, v9, Lcom/unionpay/mobile/android/languages/c;->aE:Ljava/lang/String;

    aput-object v9, v8, v7

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v5, v2}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/z;->b()Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Object;

    sget-object v9, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v9, v9, Lcom/unionpay/mobile/android/languages/c;->aE:Ljava/lang/String;

    aput-object v9, v8, v7

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/z;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    :goto_1
    move-object v2, v0

    :goto_2
    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v8

    if-nez v8, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    invoke-interface {v0, p1}, Lcom/unionpay/mobile/android/upviews/a$b;->a(Lcom/unionpay/mobile/android/upviews/a$a;)V

    return-void

    :cond_4
    const-string v8, ","

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->c()Z

    move-result v9

    if-nez v9, :cond_5

    sget-object v9, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v9, v9, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->r()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {p1, v5, v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->b()Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v9, v9, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->r()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v0

    goto :goto_5

    :cond_7
    move-object v2, v8

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    :goto_6
    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    move-object v2, v0

    goto :goto_7

    :cond_a
    move-object v2, v8

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_b
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    move-object v0, v8

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/z;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_d
    invoke-virtual {p1, v7, v2}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    :goto_9
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    invoke-interface {v0, p1, p2}, Lcom/unionpay/mobile/android/upviews/a$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "promotion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "instalment"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-nez p1, :cond_1

    return-void

    :cond_1
    instance-of v1, p1, Lcom/unionpay/mobile/android/widgets/aj;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/unionpay/mobile/android/widgets/aj;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/aj;->a(Z)V

    if-eqz v0, :cond_4

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/p;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/unionpay/mobile/android/upviews/a;->i:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/p;->b(Z)V

    return-void

    :cond_2
    instance-of v0, p1, Lcom/unionpay/mobile/android/widgets/p;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/upviews/a$b;->r()V

    :cond_3
    check-cast p1, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/p;->b(Z)V

    :cond_4
    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "promotion"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/aj;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/aj;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/aj;->a(Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 2

    const-string v0, "promotion"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/aj;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/aj;

    invoke-virtual {v0, p1, p2}, Lcom/unionpay/mobile/android/widgets/aj;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/String;ZLcom/unionpay/mobile/android/widgets/z;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v10, p6

    const-string v11, "instalment"

    const-string v12, "type"

    if-eqz v1, :cond_21

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_15

    :cond_0
    iget-object v3, v0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const/4 v13, 0x1

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/unionpay/mobile/android/upviews/a;->removeAllViews()V

    const/4 v14, -0x1

    invoke-virtual {v0, v14}, Lcom/unionpay/mobile/android/upviews/a;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v3, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->I:I

    sget v4, Lcom/unionpay/mobile/android/global/a;->f:I

    mul-int/lit8 v4, v4, 0x4

    sub-int v9, v3, v4

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v3, ""

    move-object/from16 v17, v16

    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v7, v4, :cond_21

    :try_start_0
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    iget-object v4, v0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-static {v6, v12}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pan"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Lcom/unionpay/mobile/android/widgets/af;

    invoke-direct {v3, v4, v9, v6, v10}, Lcom/unionpay/mobile/android/widgets/af;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v6, p5

    move/from16 v21, v7

    :goto_3
    move v13, v9

    goto/16 :goto_7

    :cond_2
    const-string v5, "mobile"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ah;

    invoke-direct {v3, v4, v9, v6, v10}, Lcom/unionpay/mobile/android/widgets/ah;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v5, "sms"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v5, :cond_4

    :try_start_2
    new-instance v19, Lcom/unionpay/mobile/android/widgets/ap;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v20, 0x0

    move-object/from16 v3, v19

    move v5, v9

    move/from16 v21, v7

    move-object/from16 v7, p6

    move/from16 v8, v20

    :try_start_3
    invoke-direct/range {v3 .. v8}, Lcom/unionpay/mobile/android/widgets/ap;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V

    move-object/from16 v6, p5

    move v13, v9

    :goto_4
    move-object/from16 v3, v19

    goto/16 :goto_7

    :catch_0
    move/from16 v21, v7

    goto/16 :goto_9

    :cond_4
    move/from16 v21, v7

    const-string v5, "cvn2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v3, Lcom/unionpay/mobile/android/widgets/e;

    invoke-direct {v3, v4, v9, v6, v10}, Lcom/unionpay/mobile/android/widgets/e;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    :goto_5
    move-object/from16 v6, p5

    goto :goto_3

    :cond_5
    const-string v5, "expire"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v3, Lcom/unionpay/mobile/android/widgets/av;

    invoke-direct {v3, v4, v9, v6, v10}, Lcom/unionpay/mobile/android/widgets/av;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v5, "pwd"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v5, :cond_7

    :try_start_4
    new-instance v19, Lcom/unionpay/mobile/android/widgets/UPWidget;

    iget-wide v7, v0, Lcom/unionpay/mobile/android/upviews/a;->d:J
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v3, v19

    move-object/from16 v20, v6

    move-wide v5, v7

    move v7, v9

    move-object/from16 v8, v20

    move v13, v9

    move-object/from16 v9, p6

    :try_start_5
    invoke-direct/range {v3 .. v9}, Lcom/unionpay/mobile/android/widgets/UPWidget;-><init>(Landroid/content/Context;JILorg/json/JSONObject;Ljava/lang/String;)V

    move-object/from16 v6, p5

    goto :goto_4

    :catch_1
    move v13, v9

    goto/16 :goto_8

    :cond_7
    move-object/from16 v20, v6

    move v13, v9

    const-string v5, "text"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v3, Lcom/unionpay/mobile/android/widgets/at;

    move-object/from16 v5, v20

    invoke-direct {v3, v4, v13, v5, v10}, Lcom/unionpay/mobile/android/widgets/at;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v6, p5

    goto/16 :goto_7

    :cond_8
    move-object/from16 v5, v20

    const-string v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ad;

    invoke-direct {v3, v4, v5, v10}, Lcom/unionpay/mobile/android/widgets/ad;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const-string v6, "cert_id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v3, Lcom/unionpay/mobile/android/widgets/f;

    invoke-direct {v3, v4, v13, v5, v10}, Lcom/unionpay/mobile/android/widgets/f;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const-string v6, "cert_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v3, Lcom/unionpay/mobile/android/widgets/g;

    invoke-direct {v3, v4, v5, v10}, Lcom/unionpay/mobile/android/widgets/g;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string v6, "name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ae;

    invoke-direct {v3, v4, v13, v5, v10}, Lcom/unionpay/mobile/android/widgets/ae;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const-string v6, "hidden"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v3, Lcom/unionpay/mobile/android/widgets/y;

    invoke-direct {v3, v4, v5, v10}, Lcom/unionpay/mobile/android/widgets/y;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    const-string v6, "user_name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v3, Lcom/unionpay/mobile/android/widgets/au;

    invoke-direct {v3, v4, v13, v5, v10}, Lcom/unionpay/mobile/android/widgets/au;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    const-string v6, "password"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ao;

    invoke-direct {v3, v4, v13, v5, v10}, Lcom/unionpay/mobile/android/widgets/ao;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    const-string v6, "point"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    new-instance v3, Lcom/unionpay/mobile/android/widgets/bd;

    invoke-direct {v3, v4, v13, v5, v10}, Lcom/unionpay/mobile/android/widgets/bd;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v3, Lcom/unionpay/mobile/android/widgets/p;

    iget-object v4, v0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v10}, Lcom/unionpay/mobile/android/widgets/p;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {v4, v0}, Lcom/unionpay/mobile/android/widgets/p;->a(Lcom/unionpay/mobile/android/upwidget/q$a;)V

    goto/16 :goto_6

    :cond_11
    const-string v4, "promotion"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v3, Lcom/unionpay/mobile/android/widgets/aj;

    iget-object v4, v0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v10, v0}, Lcom/unionpay/mobile/android/widgets/aj;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/aj$a;)V

    move-object v4, v3

    check-cast v4, Lcom/unionpay/mobile/android/widgets/aj;

    invoke-virtual {v4, v0}, Lcom/unionpay/mobile/android/widgets/aj;->a(Lcom/unionpay/mobile/android/upwidget/q$a;)V

    goto/16 :goto_6

    :cond_12
    const-string v4, "area_code"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v3, Lcom/unionpay/mobile/android/widgets/a;

    iget-object v4, v0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v6, p5

    :try_start_6
    invoke-direct {v3, v4, v5, v6, v10}, Lcom/unionpay/mobile/android/widgets/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :cond_13
    move-object/from16 v6, p5

    move-object/from16 v3, v16

    :goto_7
    :try_start_7
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v5, v4

    move-object/from16 v4, v18

    goto :goto_e

    :catch_2
    move-object v4, v3

    goto :goto_c

    :catch_3
    :goto_8
    move-object/from16 v6, p5

    goto :goto_b

    :catch_4
    :goto_9
    move-object/from16 v6, p5

    goto :goto_a

    :catch_5
    move-object/from16 v6, p5

    move/from16 v21, v7

    :goto_a
    move v13, v9

    :catch_6
    :goto_b
    move-object/from16 v4, v16

    :goto_c
    move-object/from16 v3, v18

    goto :goto_d

    :catch_7
    move-object/from16 v6, p5

    move/from16 v21, v7

    move v13, v9

    move-object/from16 v4, v16

    :goto_d
    const-string v5, "uppay"

    const-string v7, "json parser exception!!! - UPRuleView"

    invoke-static {v5, v7}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v17

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_e
    if-eqz v3, :cond_20

    instance-of v7, v3, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-eqz v7, :cond_14

    move-object v7, v3

    check-cast v7, Lcom/unionpay/mobile/android/widgets/UPWidget;

    iget-wide v8, v0, Lcom/unionpay/mobile/android/upviews/a;->d:J

    invoke-virtual {v7, v8, v9}, Lcom/unionpay/mobile/android/widgets/UPWidget;->a(J)V

    move-object/from16 v8, p2

    invoke-virtual {v7, v8}, Lcom/unionpay/mobile/android/widgets/UPWidget;->b(Ljava/lang/String;)V

    move/from16 v9, p3

    invoke-virtual {v7, v9}, Lcom/unionpay/mobile/android/widgets/UPWidget;->b(Z)V

    goto :goto_f

    :cond_14
    move-object/from16 v8, p2

    move/from16 v9, p3

    instance-of v7, v3, Lcom/unionpay/mobile/android/widgets/ap;

    if-eqz v7, :cond_15

    move-object v7, v3

    check-cast v7, Lcom/unionpay/mobile/android/widgets/ap;

    invoke-virtual {v7, v0}, Lcom/unionpay/mobile/android/widgets/ap;->a(Lcom/unionpay/mobile/android/widgets/ap$a;)V

    goto :goto_f

    :cond_15
    instance-of v7, v3, Lcom/unionpay/mobile/android/widgets/ah;

    if-eqz v7, :cond_16

    move-object v7, v3

    check-cast v7, Lcom/unionpay/mobile/android/widgets/ah;

    invoke-virtual {v7, v0}, Lcom/unionpay/mobile/android/widgets/ah;->a(Lcom/unionpay/mobile/android/widgets/ah$a;)V

    :cond_16
    :goto_f
    instance-of v7, v3, Lcom/unionpay/mobile/android/widgets/aa;

    if-eqz v7, :cond_17

    instance-of v7, v3, Lcom/unionpay/mobile/android/widgets/bd;

    if-nez v7, :cond_17

    move-object v7, v3

    check-cast v7, Lcom/unionpay/mobile/android/widgets/aa;

    invoke-virtual {v7, v0}, Lcom/unionpay/mobile/android/widgets/aa;->a(Lcom/unionpay/mobile/android/widgets/aa$a;)V

    :cond_17
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v15, v0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-direct {v7, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v15, -0x342f27

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v15, v14, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41200000    # 10.0f

    move/from16 v14, v21

    move-object/from16 v20, v4

    if-eqz v14, :cond_18

    iget-object v4, v0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_10

    :cond_18
    iget-boolean v4, v0, Lcom/unionpay/mobile/android/upviews/a;->f:Z

    if-eqz v4, :cond_19

    iget-object v4, v0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/unionpay/mobile/android/upviews/a;->setPadding(IIII)V

    goto :goto_11

    :cond_19
    :goto_10
    const/4 v1, 0x0

    :goto_11
    iget-boolean v4, v0, Lcom/unionpay/mobile/android/upviews/a;->f:Z

    if-eqz v4, :cond_1b

    if-nez v14, :cond_1b

    if-eqz v2, :cond_1b

    invoke-virtual {v0, v2, v5}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/z;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v0, v7, v15}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    invoke-virtual {v0, v3, v5}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_1b
    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/z;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v0, v7, v15}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v5}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v4, v3, Lcom/unionpay/mobile/android/widgets/af;

    if-eqz v4, :cond_1c

    if-eqz v2, :cond_1c

    invoke-virtual {v0, v2, v5}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v14, v4, :cond_1d

    instance-of v4, v3, Lcom/unionpay/mobile/android/widgets/aj;

    if-eqz v4, :cond_1f

    :cond_1d
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v7, -0x342f27

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    const/4 v15, -0x1

    invoke-direct {v7, v15, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v7}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13

    :cond_1e
    move-object/from16 v20, v4

    move/from16 v14, v21

    :cond_1f
    const/4 v1, 0x1

    const/4 v15, -0x1

    :goto_13
    iget-object v4, v0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_20
    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v20, v4

    move/from16 v14, v21

    const/4 v1, 0x1

    const/4 v15, -0x1

    :goto_14
    add-int/lit8 v7, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v17, v5

    move v9, v13

    move-object/from16 v3, v20

    const/4 v8, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, -0x2

    goto/16 :goto_1

    :cond_21
    :goto_15
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "instalment_empty_info"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "instalment"

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/widgets/p;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/unionpay/mobile/android/widgets/p;->a(Z)V

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {p1, v1}, Lcom/unionpay/mobile/android/widgets/p;->b(Z)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/widgets/p;->a(Z)V

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/widgets/p;->b(Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v1, "instalment_policy"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    const-string v1, "new_instalments"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/p;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method public final b()Lcom/unionpay/mobile/android/upviews/a$a;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Z)Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/widgets/z;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 2

    const-string v0, "promotion"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/aj;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/aj;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/aj;->c(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/z;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final c()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Z)Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unionpay/mobile/android/widgets/z;

    instance-of v3, v2, Lcom/unionpay/mobile/android/widgets/ad;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/z;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/z;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 2

    const-string v0, "promotion"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/aj;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/aj;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/aj;->a(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/a;->i:Ljava/lang/String;

    return-void
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unionpay/mobile/android/widgets/z;

    instance-of v3, v2, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/unionpay/mobile/android/widgets/UPWidget;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/UPWidget;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/UPWidget;->k()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/a;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unionpay/mobile/android/upviews/a$b;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unionpay/mobile/android/widgets/z;

    instance-of v4, v3, Lcom/unionpay/mobile/android/widgets/aa;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/unionpay/mobile/android/widgets/aa;

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/aa;->c()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/widgets/z;

    instance-of v2, v1, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/unionpay/mobile/android/widgets/e;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/unionpay/mobile/android/widgets/av;

    if-eqz v2, :cond_1

    :cond_2
    check-cast v1, Lcom/unionpay/mobile/android/widgets/aa;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/aa;->g()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 4

    const-string v0, "instalment"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/p;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->i:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/p;->b(Z)V

    :cond_0
    return-void
.end method
