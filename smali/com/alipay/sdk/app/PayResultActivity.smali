.class public final Lcom/alipay/sdk/app/PayResultActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/PayResultActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "{\"isLogin\":\"false\"}"

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "hk.alipay.wallet"

.field public static final d:Ljava/lang/String; = "phonecashier.pay.hash"

.field public static final e:Ljava/lang/String; = "orderSuffix"

.field public static final f:Ljava/lang/String; = "externalPkgName"

.field public static final g:Ljava/lang/String; = "phonecashier.pay.result"

.field public static final h:Ljava/lang/String; = "phonecashier.pay.resultOrderHash"


# instance fields
.field private i:Lcom/alipay/sdk/sys/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/sdk/app/PayResultActivity;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/alipay/sdk/app/PayResultActivity;->i:Lcom/alipay/sdk/sys/a;

    return-void
.end method

.method private static a(Landroid/app/Activity;I)V
    .locals 2

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/sdk/app/f;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/app/f;-><init>(Landroid/app/Activity;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "UTF-8"

    .line 130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_0
    const-string v2, "hk.alipay.wallet"

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alipayhk://platformapi/startApp?appId=20000125&schemePaySession="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&orderSuffix="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&packageName="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&externalPkgName="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-static {p1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p0, :cond_0

    .line 144
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 146
    :catchall_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_1
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    .line 156
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/PayResultActivity$a;->b:Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/alipay/sdk/app/PayResultActivity;->b:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/alipay/sdk/app/PayResultActivity;->a(Ljava/util/HashMap;Ljava/lang/String;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 164
    sput-object p0, Lcom/alipay/sdk/app/PayResultActivity$a;->b:Ljava/lang/String;

    .line 165
    sget-object p0, Lcom/alipay/sdk/app/PayResultActivity;->b:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/alipay/sdk/app/PayResultActivity;->a(Ljava/util/HashMap;Ljava/lang/String;)Z

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 192
    :cond_1
    monitor-enter p0

    .line 193
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 194
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "orderSuffix"

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/16 v2, 0x12c

    if-eqz v1, :cond_1

    const-string/jumbo v1, "phonecashier.pay.hash"

    .line 81
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "externalPkgName"

    .line 83
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {p1}, Lcom/alipay/sdk/sys/a$a;->a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/app/PayResultActivity;->i:Lcom/alipay/sdk/sys/a;

    if-nez p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayResultActivity;->finish()V

    .line 91
    :cond_0
    sget-object p1, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/sdk/app/PayResultActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p0, v2}, Lcom/alipay/sdk/app/PayResultActivity;->a(Landroid/app/Activity;I)V

    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alipay/sdk/app/PayResultActivity;->i:Lcom/alipay/sdk/sys/a;

    if-nez v0, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayResultActivity;->finish()V

    :cond_2
    const-string/jumbo v0, "phonecashier.pay.result"

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "phonecashier.pay.resultOrderHash"

    const/4 v3, 0x0

    .line 102
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_5

    .line 105
    sget-object v1, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 112
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 113
    sget-object p1, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/sdk/app/PayResultActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_4
    sget-object p1, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/sdk/app/PayResultActivity;->a(Ljava/lang/String;)V

    :goto_0
    const-string p1, ""

    .line 117
    sput-object p1, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    .line 118
    invoke-static {p0, v2}, Lcom/alipay/sdk/app/PayResultActivity;->a(Landroid/app/Activity;I)V

    return-void

    .line 106
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/alipay/sdk/app/PayResultActivity;->i:Lcom/alipay/sdk/sys/a;

    const-string v1, "biz"

    const-string v3, "SchemePayWrongHashEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v3, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object p1, Lcom/alipay/sdk/app/PayResultActivity$a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/sdk/app/PayResultActivity;->a(Ljava/lang/String;)V

    .line 108
    invoke-static {p0, v2}, Lcom/alipay/sdk/app/PayResultActivity;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 122
    :catchall_0
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayResultActivity;->finish()V

    return-void
.end method
