.class Lcn/jpush/android/ui/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jpush/android/ui/a;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcn/jpush/android/ui/a;


# direct methods
.method constructor <init>(Lcn/jpush/android/ui/a;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/ui/a$2;->b:Lcn/jpush/android/ui/a;

    iput-object p2, p0, Lcn/jpush/android/ui/a$2;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcn/jpush/android/ui/a$2;->b:Lcn/jpush/android/ui/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jpush/android/ui/a;->a(Lcn/jpush/android/ui/a;Z)Z

    iget-object v0, p0, Lcn/jpush/android/ui/a$2;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
