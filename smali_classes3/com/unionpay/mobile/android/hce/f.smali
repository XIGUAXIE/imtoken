.class public Lcom/unionpay/mobile/android/hce/f;
.super Ljava/lang/Object;


# static fields
.field private static final w:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unionpay/mobile/android/fully/a;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/unionpay/mobile/android/hce/k;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unionpay/mobile/android/hce/k;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/unionpay/mobile/android/hce/k;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/unionpay/mobile/android/hce/d;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/unionpay/mobile/android/hce/l;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Landroid/os/Handler$Callback;

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unionpay/mobile/android/hce/f;->w:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/hce/f;->f:I

    iput v0, p0, Lcom/unionpay/mobile/android/hce/f;->g:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/unionpay/mobile/android/hce/f;->h:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/unionpay/mobile/android/hce/f;->i:I

    const-string v1, "hce"

    iput-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->j:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->m:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->n:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->o:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->p:Ljava/util/HashMap;

    iput v0, p0, Lcom/unionpay/mobile/android/hce/f;->q:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/unionpay/mobile/android/hce/f;->r:I

    iput v0, p0, Lcom/unionpay/mobile/android/hce/f;->s:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/unionpay/mobile/android/hce/f;->t:I

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->u:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->v:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/unionpay/mobile/android/hce/g;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/hce/g;-><init>(Lcom/unionpay/mobile/android/hce/f;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->x:Landroid/os/Handler$Callback;

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/f;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->x:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->y:Landroid/os/Handler;

    const-string v0, "20150801000000000000"

    iput-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->l:Ljava/lang/String;

    check-cast p1, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    const-class v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/fully/a;

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/f;->b:Lcom/unionpay/mobile/android/fully/a;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/hce/f;)V
    .locals 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/hce/k;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/hce/k;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/hce/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/hce/k;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/hce/f;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/unionpay/mobile/android/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/unionpay/mobile/android/hce/f;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/unionpay/mobile/android/utils/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/unionpay/mobile/android/hce/f;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/unionpay/mobile/android/hce/f;->q:I

    iget-object v4, p0, Lcom/unionpay/mobile/android/hce/f;->p:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/unionpay/mobile/android/hce/l;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/hce/l;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/hce/f;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/unionpay/mobile/android/hce/d;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/hce/d;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/hce/f;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/hce/f;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/unionpay/mobile/android/hce/f;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/unionpay/mobile/android/hce/d;

    iget-object v0, v1, Lcom/unionpay/mobile/android/hce/f;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/unionpay/mobile/android/hce/l;

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/hce/d;->a()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/hce/l;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/unionpay/mobile/android/hce/f;->y:Landroid/os/Handler;

    const/16 v7, 0x7d6

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/hce/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/hce/l;->b()Lcom/unionpay/mobile/android/hce/service/a;

    move-result-object v7

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/hce/d;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/hce/d;->d()Landroid/content/ServiceConnection;

    move-result-object v9

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v8, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v8, v0}, Lcom/unionpay/mobile/android/hce/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " card after: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "uppay-hce"

    invoke-static {v11, v10}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_4

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3

    check-cast v12, Lorg/json/JSONObject;

    sget-object v13, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    if-nez v13, :cond_0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v13, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    :cond_0
    new-instance v13, Lcom/unionpay/mobile/android/hce/c;

    invoke-direct {v13, v12, v0, v7, v9}, Lcom/unionpay/mobile/android/hce/c;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/unionpay/mobile/android/hce/service/a;Landroid/content/ServiceConnection;)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_1
    sget-object v15, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    if-eqz v15, :cond_2

    sget-object v15, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_2

    invoke-virtual {v13}, Lcom/unionpay/mobile/android/hce/c;->a()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v13}, Lcom/unionpay/mobile/android/hce/c;->a()Ljava/lang/String;

    move-result-object v15

    sget-object v5, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unionpay/mobile/android/model/d;

    invoke-interface {v5}, Lcom/unionpay/mobile/android/model/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v14, 0x1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    if-nez v14, :cond_3

    sget-object v5, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    invoke-virtual {v3}, Lcom/unionpay/mobile/android/hce/d;->f()V

    iget-object v0, v1, Lcom/unionpay/mobile/android/hce/f;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/hce/l;->e()V

    iget-object v0, v1, Lcom/unionpay/mobile/android/hce/f;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/unionpay/mobile/android/hce/f;->w:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget v0, v1, Lcom/unionpay/mobile/android/hce/f;->s:I

    sub-int/2addr v0, v6

    iput v0, v1, Lcom/unionpay/mobile/android/hce/f;->s:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/unionpay/mobile/android/hce/f;->b()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/unionpay/mobile/android/hce/f;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unionpay/mobile/android/hce/d;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/hce/d;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_6
    const-string v0, "uppay"

    const-string v2, "hce finished !!!!!!!!!!!!"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/unionpay/mobile/android/model/b;->bl:Z

    iget-object v0, v1, Lcom/unionpay/mobile/android/hce/f;->c:Landroid/os/Handler;

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v1, Lcom/unionpay/mobile/android/hce/f;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 6

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

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "resp"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "msg"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "params"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "signature"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/f;->d:Ljava/lang/String;

    const-string p1, "configs"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/hce/f;->o:Ljava/util/List;

    new-instance v5, Lcom/unionpay/mobile/android/hce/k;

    invoke-direct {v5, v3}, Lcom/unionpay/mobile/android/hce/k;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "version"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/unionpay/mobile/android/hce/f;->m:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "total_count"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/unionpay/mobile/android/hce/f;->h:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/unionpay/mobile/android/hce/f;->h:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/unionpay/mobile/android/hce/f;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/hce/f;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/hce/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/unionpay/mobile/android/hce/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/unionpay/mobile/android/hce/i;-><init>(Lcom/unionpay/mobile/android/hce/f;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/unionpay/mobile/android/hce/d;

    invoke-direct {p2, p1}, Lcom/unionpay/mobile/android/hce/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/unionpay/mobile/android/hce/d;->a(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.unionpay.uppay.action.HCE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/f;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/f;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/hce/f;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/hce/f;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/hce/f;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/hce/f;->u:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/hce/f;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/hce/f;->v:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action_resp_code"

    const-string v2, "0000"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "v"

    const-string v4, "1.9"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cmd"

    iget-object v4, p0, Lcom/unionpay/mobile/android/hce/f;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "params"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "base_version"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->b:Lcom/unionpay/mobile/android/fully/a;

    invoke-interface {v1, p1}, Lcom/unionpay/mobile/android/fully/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "action_resp_message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/hce/f;->a(Landroid/os/Bundle;)Z

    iget p1, p0, Lcom/unionpay/mobile/android/hce/f;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/unionpay/mobile/android/hce/f;->f:I

    iget v1, p0, Lcom/unionpay/mobile/android/hce/f;->g:I

    if-gt p1, v1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/f;->l:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/hce/f;->d(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_0
    return-object v0

    :catch_0
    const-string p1, "10019"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/hce/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/hce/f;->y:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/hce/f;)I
    .locals 0

    iget p0, p0, Lcom/unionpay/mobile/android/hce/f;->i:I

    return p0
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/hce/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/hce/f;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/unionpay/mobile/android/hce/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/hce/f;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/unionpay/mobile/android/hce/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/hce/f;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/unionpay/mobile/android/hce/f;)I
    .locals 0

    iget p0, p0, Lcom/unionpay/mobile/android/hce/f;->f:I

    return p0
.end method

.method static synthetic j(Lcom/unionpay/mobile/android/hce/f;)I
    .locals 0

    iget p0, p0, Lcom/unionpay/mobile/android/hce/f;->h:I

    return p0
.end method

.method static synthetic k(Lcom/unionpay/mobile/android/hce/f;)V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/hce/k;

    iget-object v2, p0, Lcom/unionpay/mobile/android/hce/f;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/hce/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unionpay/mobile/android/hce/k;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/hce/k;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/hce/f;->m:Ljava/lang/String;

    const-string v3, "hce_version"

    invoke-static {v1, v2, v3}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "hce_info"

    invoke-static {v1, v0, v2}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/unionpay/mobile/android/hce/f;->k:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/hce/k;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/hce/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/hce/f;->f:I

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/hce/f;->h:I

    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/f;->c:Landroid/os/Handler;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/f;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    iget v0, p0, Lcom/unionpay/mobile/android/hce/f;->q:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/unionpay/mobile/android/model/b;->bl:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/f;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/unionpay/mobile/android/hce/f;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lcom/unionpay/mobile/android/hce/f;->r:I

    :goto_0
    iget v3, p0, Lcom/unionpay/mobile/android/hce/f;->q:I

    if-gt v2, v3, :cond_2

    iget v3, p0, Lcom/unionpay/mobile/android/hce/f;->s:I

    iget v4, p0, Lcom/unionpay/mobile/android/hce/f;->t:I

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/unionpay/mobile/android/hce/f;->p:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unionpay/mobile/android/hce/k;

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/hce/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/hce/k;->d()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/unionpay/mobile/android/hce/f;->s:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/unionpay/mobile/android/hce/f;->s:I

    new-instance v5, Lcom/unionpay/mobile/android/hce/h;

    invoke-direct {v5, p0, v4, v3}, Lcom/unionpay/mobile/android/hce/h;-><init>(Lcom/unionpay/mobile/android/hce/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/unionpay/mobile/android/hce/h;->start()V

    iget v3, p0, Lcom/unionpay/mobile/android/hce/f;->r:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/unionpay/mobile/android/hce/f;->r:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/unionpay/mobile/android/hce/f;->i:I

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/f;->e:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 5

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->a:Landroid/content/Context;

    const-string v1, "hce_version"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->l:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/f;->a:Landroid/content/Context;

    const-string v1, "hce_info"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "[{\"package\":\"com.yitong.mbank0408\",\"issuer\":\"64083300\",\"syn_key\":\"0123456789ABCDEF1010101010101010\",\"pub_key\":\"268576AF6F50DA40196E18D6E059D2A721373638\",\"status\":\"I\",\"priority\":\"1\"}]"

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/unionpay/mobile/android/hce/k;

    invoke-direct {v3, v2}, Lcom/unionpay/mobile/android/hce/k;-><init>(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/hce/f;->n:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/hce/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unionpay/mobile/android/hce/j;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/hce/j;-><init>(Lcom/unionpay/mobile/android/hce/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final c(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/unionpay/mobile/android/hce/f;->t:I

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/f;->k:Ljava/lang/String;

    return-void
.end method
