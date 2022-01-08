.class final Lcn/jiguang/analytics/android/view/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/jiguang/analytics/android/view/o;


# direct methods
.method constructor <init>(Lcn/jiguang/analytics/android/view/o;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/p;->a:Lcn/jiguang/analytics/android/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcn/jiguang/analytics/android/view/n;->e()Lcn/jiguang/analytics/android/view/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jiguang/analytics/android/view/f;->setVisibility(I)V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
