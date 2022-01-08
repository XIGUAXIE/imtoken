.class final Lcn/jiguang/analytics/android/view/d;
.super Lcn/jiguang/analytics/android/e/c;


# instance fields
.field final synthetic a:Lcn/jiguang/analytics/android/view/BuryWebActivity;


# direct methods
.method constructor <init>(Lcn/jiguang/analytics/android/view/BuryWebActivity;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/d;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-direct {p0, p2}, Lcn/jiguang/analytics/android/e/c;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/d;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-static {v0}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->c(Lcn/jiguang/analytics/android/view/BuryWebActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onOtherResult, code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BuryWebActivity_xxx"

    invoke-static {p2, p1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/d;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcn/jiguang/analytics/android/f/b;

    invoke-direct {v0, p1}, Lcn/jiguang/analytics/android/f/b;-><init>(Lorg/json/JSONObject;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/d;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/f/d;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/view/d;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->finish()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/d;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->finish()V

    return-void
.end method
