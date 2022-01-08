.class Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;
.super Ljava/lang/Object;
.source "ScreenStackHeaderConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    invoke-static {v0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->access$000(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    invoke-static {v1}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->access$100(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStack;->getRootScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 54
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->dismiss()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->dismiss()V

    .line 61
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
