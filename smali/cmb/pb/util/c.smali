.class Lcmb/pb/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcmb/pb/ui/g;


# instance fields
.field final synthetic a:Lcmb/pb/util/b;


# direct methods
.method constructor <init>(Lcmb/pb/util/b;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {v0}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {v1}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object v1

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;I)V

    iget-object v0, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {v0}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object v0

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->b(Lcmb/pb/util/CMBKeyboardFunc;)I

    move-result v0

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {v1}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object v1

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {v0}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {v1}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object v1

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->b(Lcmb/pb/util/CMBKeyboardFunc;)I

    move-result v1

    iget-object v2, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {v2}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object v2

    invoke-static {v2}, Lcmb/pb/util/CMBKeyboardFunc;->c(Lcmb/pb/util/CMBKeyboardFunc;)I

    move-result v2

    iget-object v3, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {v3}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object v3

    invoke-static {v3}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lcmb/pb/util/CMBKeyboardFunc;->b(Lcmb/pb/util/CMBKeyboardFunc;I)V

    iget-object p1, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {p1}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object p1

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->d(Lcmb/pb/util/CMBKeyboardFunc;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {p1}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object p1

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->d(Lcmb/pb/util/CMBKeyboardFunc;)I

    move-result v0

    iget-object v1, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {v1}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object v1

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcmb/pb/util/CMBKeyboardFunc;->b(Lcmb/pb/util/CMBKeyboardFunc;I)V

    iget-object p1, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {p1}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object p1

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->e(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {v0}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object v0

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->f(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcmb/pb/util/c;->a:Lcmb/pb/util/b;

    invoke-static {p1}, Lcmb/pb/util/b;->a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;

    move-result-object p1

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->g(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcmb/pb/util/i;->a(Landroid/content/Context;)V

    return-void
.end method
