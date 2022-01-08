.class final Lcn/jiguang/analytics/android/view/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jiguang/analytics/android/view/h;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcn/jiguang/analytics/android/view/n;->e()Lcn/jiguang/analytics/android/view/f;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/jiguang/analytics/android/view/f;->setVisibility(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/e/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u662f\u5426\u9000\u51fa\u5708\u9009\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcn/jiguang/analytics/android/view/p;

    invoke-direct {v1, p0}, Lcn/jiguang/analytics/android/view/p;-><init>(Lcn/jiguang/analytics/android/view/o;)V

    const-string/jumbo v2, "\u7ee7\u7eed\u5708\u9009"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcn/jiguang/analytics/android/view/q;

    invoke-direct {v1, p0}, Lcn/jiguang/analytics/android/view/q;-><init>(Lcn/jiguang/analytics/android/view/o;)V

    const-string/jumbo v2, "\u9000\u51fa\u5708\u9009"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
