.class public Lcn/jiguang/analytics/android/api/aop/JACActAx;
.super Landroidx/appcompat/app/AppCompatActivity;


# static fields
.field private static final TAG:Ljava/lang/String; = "JACAct"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onContentChanged()V

    invoke-static {}, Lcn/jiguang/analytics/android/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/a;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcn/jiguang/analytics/android/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/analytics/android/e/a;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-static {}, Lcn/jiguang/analytics/android/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/a;->f(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/e/a;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    invoke-static {}, Lcn/jiguang/analytics/android/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/a;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    invoke-static {}, Lcn/jiguang/analytics/android/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/analytics/android/e/a;->c(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lcn/jiguang/analytics/android/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/e/a;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-static {}, Lcn/jiguang/analytics/android/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/analytics/android/e/a;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    invoke-static {}, Lcn/jiguang/analytics/android/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/analytics/android/e/a;->e(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
