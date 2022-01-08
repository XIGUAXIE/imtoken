.class final Lcn/jiguang/analytics/android/view/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/jiguang/analytics/android/view/o;


# direct methods
.method constructor <init>(Lcn/jiguang/analytics/android/view/o;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/q;->a:Lcn/jiguang/analytics/android/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcn/jiguang/analytics/android/view/n;->c()V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
