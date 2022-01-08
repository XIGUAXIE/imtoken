.class final Lcom/pingplusplus/android/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingplusplus/android/j;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/j;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/j;)V
    .locals 0

    iput-object p1, p0, Lcom/pingplusplus/android/j$a;->a:Lcom/pingplusplus/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/j$a;->a:Lcom/pingplusplus/android/j;

    invoke-virtual {v0}, Lcom/pingplusplus/android/j;->g()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
