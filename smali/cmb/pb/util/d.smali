.class Lcmb/pb/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcmb/pb/util/CMBKeyboardFunc;


# direct methods
.method constructor <init>(Lcmb/pb/util/CMBKeyboardFunc;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/util/d;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcmb/pb/util/d;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/util/d;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->d(Lcmb/pb/util/CMBKeyboardFunc;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    return-void
.end method
