.class final Lcom/unionpay/mobile/android/widgets/af$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/widgets/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/af;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/widgets/af;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/af$a;->a:Lcom/unionpay/mobile/android/widgets/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/af$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/af$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/af$a;->d:Ljava/lang/String;

    const-string p1, "pattern"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/af$a;->b:Ljava/lang/String;

    const-string p1, "prefix"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/af$a;->c:Ljava/lang/String;

    const-string p1, "isCheck"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/af$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/af$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/af$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/af$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
