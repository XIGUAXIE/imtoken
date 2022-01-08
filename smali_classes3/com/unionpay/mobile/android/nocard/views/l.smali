.class public Lcom/unionpay/mobile/android/nocard/views/l;
.super Lcom/unionpay/mobile/android/nocard/views/b;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private volatile C:I

.field private D:Z

.field private E:Z

.field private F:Lorg/json/JSONArray;

.field private G:Lcom/unionpay/mobile/android/model/e;

.field private H:J

.field private I:Landroid/app/Activity;

.field private J:Z

.field private K:Z

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation
.end field

.field t:I

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:I

.field y:I

.field private z:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->B:I

    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->D:Z

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->E:Z

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->K:Z

    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->t:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->y:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->f:I

    const-string v0, "init"

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->d()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->I:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/a;->a(Landroid/content/Intent;Lcom/unionpay/mobile/android/model/b;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->J:Z

    :goto_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->aM:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/l;->setVisibility(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->r()V

    return-void
.end method

.method private b(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iput-object p2, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    :cond_0
    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/l;->c(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iput-object p2, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    :cond_0
    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private f(I)Z
    .locals 1

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v0, p1, Lcom/unionpay/mobile/android/model/b;->aw:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final y()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method private final declared-synchronized z()V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showContentView() +++"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->E:Z

    if-eqz v4, :cond_2

    const-string v4, "1"

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->an:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v4, v4, Lcom/unionpay/mobile/android/model/b;->ao:I

    invoke-direct {p0, v4}, Lcom/unionpay/mobile/android/nocard/views/l;->f(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x11101

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v4, v4, Lcom/unionpay/mobile/android/model/b;->aD:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v0, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->D:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iput-boolean v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->D:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aM:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :cond_6
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->ao:I

    const-string v4, "1"

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->an:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v4, v4, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    goto/16 :goto_7

    :cond_7
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    iput-object v5, v4, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    goto/16 :goto_7

    :cond_8
    sget-boolean v4, Lcom/unionpay/mobile/android/model/b;->aA:Z

    if-eqz v4, :cond_a

    sget-boolean v4, Lcom/unionpay/mobile/android/model/b;->aB:Z

    if-eqz v4, :cond_a

    sget-boolean v4, Lcom/unionpay/mobile/android/model/b;->bn:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v5}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v5

    if-ne v5, v3, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_a
    const-string v4, "0"

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->an:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    :goto_4
    iput-object v5, v4, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    goto :goto_5

    :cond_b
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v4, v4, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_d
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    :goto_5
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v5}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v5

    and-int/2addr v5, v0

    if-nez v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_10
    :goto_7
    const-string v4, "0"

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->an:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_12

    :cond_11
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->f(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    const-string v1, "fail"

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_12
    :try_start_3
    const-string v0, "1"

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->an:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_1c

    :try_start_4
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_13
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->ak:Ljava/lang/String;

    :goto_8
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_14
    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->aj:Ljava/lang/String;

    :goto_9
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_15
    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->ai:Ljava/lang/String;

    :goto_a
    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->y()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_16
    sget-object v5, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/languages/c;->al:Ljava/lang/String;

    :goto_b
    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v7}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, ""

    invoke-interface {v7}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v9

    if-eq v9, v3, :cond_1b

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1a

    const/16 v10, 0x8

    if-eq v9, v10, :cond_19

    const/16 v10, 0x10

    if-eq v9, v10, :cond_18

    goto :goto_d

    :cond_18
    move-object v8, v4

    goto :goto_d

    :cond_19
    move-object v8, v0

    goto :goto_d

    :cond_1a
    move-object v8, v2

    goto :goto_d

    :cond_1b
    move-object v8, v5

    :goto_d
    invoke-interface {v7, v8}, Lcom/unionpay/mobile/android/model/c;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_c

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1c
    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bn:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->aA:Z

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->aB:Z

    if-nez v0, :cond_1e

    :cond_1d
    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    const-string v1, "fail"

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_6
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->s()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-nez v0, :cond_1f

    iget v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->t:I

    iget v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:I

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:Ljava/lang/String;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->v:Ljava/lang/String;

    iget v7, p0, Lcom/unionpay/mobile/android/nocard/views/l;->y:I

    iget-object v8, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/unionpay/mobile/android/nocard/views/l;->a(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ay:Z

    if-eqz v0, :cond_20

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->d(I)V

    goto :goto_e

    :cond_20
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aE:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bl:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_22

    :cond_21
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->bh:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_22
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->G:Lcom/unionpay/mobile/android/model/e;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->a(ILcom/unionpay/mobile/android/model/e;)V

    :goto_e
    const-string v0, "uppay"

    const-string v1, "showContentView() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 12

    const-string v0, "uppay"

    const-string v1, "init.parserParamJsonObj() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->b(I)V

    return-void

    :cond_0
    iget v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->B:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    if-eq v2, v1, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->c(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->b(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->b(I)V

    goto/16 :goto_9

    :cond_2
    const-string v1, "userId"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/unionpay/mobile/android/utils/o;->e:[Ljava/lang/String;

    :cond_3
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->G:Lcom/unionpay/mobile/android/model/e;

    :cond_4
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->u()V

    goto/16 :goto_9

    :cond_5
    const-string v2, "secret"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sec_sign"

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v5, v4}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->d(Ljava/lang/String;)Z

    const-string v4, "talking_data_flag"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/unionpay/mobile/android/global/a;->L:Z

    :cond_6
    const-string v4, "mer_id"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    sget-object v4, Lcom/unionpay/mobile/android/utils/o;->a:[Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/mobile/android/utils/o;->b:[Ljava/lang/String;

    sget-object v4, Lcom/unionpay/mobile/android/utils/o;->c:[Ljava/lang/String;

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->a:Ljava/lang/String;

    const-string v4, "upgrade_info"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    const-string v5, "desc"

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    invoke-static {v4, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    const-string v6, "02"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/m;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/nocard/views/m;-><init>(Lcom/unionpay/mobile/android/nocard/views/l;)V

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/n;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/n;-><init>(Lcom/unionpay/mobile/android/nocard/views/l;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v2, p1, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->ae:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->af:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->ag:Ljava/lang/String;

    invoke-virtual {p1, v1, v5, v2, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_7
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v5, "title"

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/unionpay/mobile/android/model/b;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v5, "init_button"

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v4, Lcom/unionpay/mobile/android/model/b;->j:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v5, "order"

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    iput-object v5, v4, Lcom/unionpay/mobile/android/model/b;->h:Lorg/json/JSONArray;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, v7, Lcom/unionpay/mobile/android/model/b;->h:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    const-string v8, "label"

    if-ge v6, v7, :cond_9

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, v7, Lcom/unionpay/mobile/android/model/b;->h:Lorg/json/JSONArray;

    invoke-static {v7, v6}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8

    check-cast v7, Lorg/json/JSONObject;

    invoke-static {v7, v8}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "value"

    invoke-static {v7, v9}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    sget-object v6, Lcom/unionpay/mobile/android/utils/o;->d:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "risk_info"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v4, Lcom/unionpay/mobile/android/model/b;->i:Lorg/json/JSONObject;

    const-string v4, "cards"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    :cond_a
    const/4 v6, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    invoke-static {v7, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONArray;

    invoke-static {v9, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONArray;

    invoke-static {v10, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/unionpay/mobile/android/model/a;

    invoke-direct {v11, v7, v9, v10, v5}, Lcom/unionpay/mobile/android/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_b
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "bank_url"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/unionpay/mobile/android/model/b;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "input_info"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    iput-object v6, v4, Lcom/unionpay/mobile/android/model/b;->t:Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "account_info"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v4, Lcom/unionpay/mobile/android/model/b;->v:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "other_card_info"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v4, Lcom/unionpay/mobile/android/model/b;->w:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "user_id"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v6, "sid"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-static {v4}, Lcom/unionpay/mobile/android/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/unionpay/mobile/android/model/b;->k:Ljava/lang/String;

    :cond_c
    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-static {v2}, Lcom/unionpay/mobile/android/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/unionpay/mobile/android/model/b;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v2, v4, Lcom/unionpay/mobile/android/model/b;->m:Ljava/lang/String;

    :cond_d
    const-string v2, "uid"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->t()Z

    move-result v2

    const-string v4, "1"

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->s()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "kalefu_info"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v2, Lcom/unionpay/mobile/android/model/b;->x:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "kalefu_button_label"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/unionpay/mobile/android/model/b;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->y:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->y:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_10

    :cond_f
    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object v6, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v6, v6, Lcom/unionpay/mobile/android/languages/c;->am:Ljava/lang/String;

    iput-object v6, v2, Lcom/unionpay/mobile/android/model/b;->y:Ljava/lang/String;

    :cond_10
    const-string v2, "cards_desc"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "trade_privilege"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/unionpay/mobile/android/model/b;->an:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "upcard_msg"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput v5, v2, Lcom/unionpay/mobile/android/model/b;->ao:I

    const-string v2, "upcard_support_type"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->an:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_11

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v6, Lcom/unionpay/mobile/android/model/b;->ao:I

    :cond_11
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->ao:I

    invoke-direct {p0, v2}, Lcom/unionpay/mobile/android/nocard/views/l;->f(I)Z

    :cond_12
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "ad"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/unionpay/mobile/android/model/b;->ar:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "pay_tip"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/unionpay/mobile/android/model/b;->at:Ljava/lang/String;

    const-string v2, "sup_pay_method"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v7, "01"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/unionpay/mobile/android/model/b;->aC:Z

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v7, "001"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v6, Lcom/unionpay/mobile/android/model/b;->aD:Z

    :cond_13
    const-string v2, "default_pay_type"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v7, "0501"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v6, Lcom/unionpay/mobile/android/model/b;->aE:Z

    :cond_14
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "find_pwd_url"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v2, Lcom/unionpay/mobile/android/model/b;->au:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "reg_url"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v2, Lcom/unionpay/mobile/android/model/b;->Y:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "sup_nfc"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/unionpay/mobile/android/model/b;->ay:Z

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v6, "sup_hce"

    invoke-static {p1, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/unionpay/mobile/android/model/b;->az:Z

    const-string v2, "sup_samsung_pay"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/unionpay/mobile/android/model/b;->aA:Z

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v4, "hce_introduction_url"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/unionpay/mobile/android/model/b;->bh:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->s()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->ay:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-nez v2, :cond_16

    const-string v2, "nfc_title"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v2, v4, Lcom/unionpay/mobile/android/languages/c;->bo:Ljava/lang/String;

    :cond_15
    const-string v2, "nfc_button"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {v2, v8}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v2, v4, Lcom/unionpay/mobile/android/languages/c;->bp:Ljava/lang/String;

    :cond_16
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->s()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-nez v2, :cond_1a

    const-string v2, "hce_title"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "hce_page_size"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->t:I

    const-string v4, "hce_button"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "htmlLabel"

    invoke-static {v4, v7}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    sget-object v8, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v2, v8, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    goto :goto_2

    :cond_17
    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v6, v2, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v7, v2, Lcom/unionpay/mobile/android/languages/c;->br:Ljava/lang/String;

    goto :goto_3

    :cond_18
    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v6, v2, Lcom/unionpay/mobile/android/languages/c;->br:Ljava/lang/String;

    :goto_3
    const-string v2, "action"

    invoke-static {v4, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:Ljava/lang/String;

    const-string v2, "reserved"

    invoke-static {v4, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->v:Ljava/lang/String;

    const-string v2, "iss_ins_code"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Ljava/lang/String;

    const-string v2, "hce_bank_timeout"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:I

    const-string v2, "hce_concurrent_count"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->y:I

    const-string v2, "hce_pay_timeout"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_19

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput v2, v4, Lcom/unionpay/mobile/android/model/b;->be:I

    goto :goto_4

    :cond_19
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const/16 v4, 0x1388

    iput v4, v2, Lcom/unionpay/mobile/android/model/b;->be:I

    :goto_4
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v4, "no_hce_card_msg"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/unionpay/mobile/android/model/b;->bi:Ljava/lang/String;

    :cond_1a
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    const-string v4, "f55"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "order_amount"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v2, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1b

    move-object v7, v4

    goto :goto_5

    :cond_1b
    const-string v7, "000000000000"

    :goto_5
    const-string v8, "trans_amt"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/unionpay/mobile/android/utils/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/unionpay/mobile/android/model/b;->bp:Ljava/lang/String;

    const-string v4, "order_currency"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v2, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1c

    move-object v7, v4

    goto :goto_6

    :cond_1c
    const-string v7, "0156"

    :goto_6
    const-string v8, "trans currcy code"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v2, Lcom/unionpay/mobile/android/model/b;->bq:Ljava/lang/String;

    const-string v4, "trans_type"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1d

    goto :goto_7

    :cond_1d
    const-string v6, "00"

    :goto_7
    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "mer_name"

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    const-string v6, ""

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1e

    goto :goto_8

    :cond_1e
    move-object p1, v6

    :goto_8
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v6, p1, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    :cond_1f
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/views/l;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->B:I

    new-array p1, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    aput-object v1, p1, v5

    const-string v1, "\"user_id\":\"%s\""

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->m(Ljava/lang/String;)V

    :goto_9
    const-string p1, "init.parserParamJsonObj() ---"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean p1, v0, Lcom/unionpay/mobile/android/model/b;->ax:Z

    return-void
.end method

.method public final b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "doErrHappended() +++"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fail"

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "doErrHappended() ---"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final d()V
    .locals 8

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->d()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->m:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v2, 0xbc0

    invoke-virtual {v0, v2, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->I:I

    div-int/lit8 v0, v0, 0x2

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v4, 0x403

    invoke-virtual {v3, v4, v0, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v5, Lcom/unionpay/mobile/android/global/a;->j:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v5, Lcom/unionpay/mobile/android/global/a;->t:I

    int-to-float v5, v5

    const v6, 0x3e99999a    # 0.3f

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v2, v3}, Lcom/unionpay/mobile/android/nocard/views/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x1010287

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->d:I

    mul-int/lit8 v2, v2, 0x3

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, v3}, Lcom/unionpay/mobile/android/nocard/views/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v6, Lcom/unionpay/mobile/android/global/a;->b:I

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v2, v5}, Lcom/unionpay/mobile/android/nocard/views/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v7, v7, Lcom/unionpay/mobile/android/languages/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v7, v7, Lcom/unionpay/mobile/android/languages/c;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final r()V
    .locals 11

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->K:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->K:Z

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->v()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->E:Z

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->I:Landroid/app/Activity;

    iget-boolean v10, p0, Lcom/unionpay/mobile/android/nocard/views/l;->J:Z

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a()V

    :try_start_0
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v2

    goto :goto_0

    :catch_0
    const/4 v5, 0x0

    :goto_0
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/unionpay/mobile/android/utils/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.unionpay.uppay"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v6, v2, 0x1

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->f:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    const/4 v4, 0x2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->c:Z

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, v1, Lcom/unionpay/mobile/android/model/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v8, v1, Lcom/unionpay/mobile/android/model/b;->aO:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->f:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->d:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    :goto_2
    invoke-static {v1}, Lcom/unionpay/mobile/android/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->initJNIEnv(Landroid/app/Activity;IIZLjava/lang/String;ILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->H:J

    const-wide/16 v3, -0x1

    if-eqz v10, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const-string v1, "000"

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->B:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-wide v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->H:J

    invoke-virtual {v0, v2, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(J)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->e:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v2, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;)V

    return-void

    :cond_4
    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->H:J

    const/4 v2, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_5

    const/4 v0, 0x7

    invoke-direct {p0, v0, v2}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    return-void

    :cond_5
    if-nez v10, :cond_6

    const/4 v0, 0x5

    invoke-direct {p0, v0, v2}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->j()V

    return-void

    :cond_0
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->E:Z

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->z()V

    return-void
.end method

.method public v()V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->w()V

    return-void
.end method

.method protected final w()V
    .locals 1

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->z()V

    return-void
.end method

.method public final x()V
    .locals 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    return-void
.end method
