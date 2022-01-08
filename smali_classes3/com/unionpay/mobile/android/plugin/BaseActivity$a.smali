.class final Lcom/unionpay/mobile/android/plugin/BaseActivity$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/plugin/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/unionpay/mobile/android/model/b;

.field public b:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

.field final synthetic c:Lcom/unionpay/mobile/android/plugin/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/plugin/BaseActivity;Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->c:Lcom/unionpay/mobile/android/plugin/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->b:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    new-instance p1, Lcom/unionpay/mobile/android/model/b;

    invoke-direct {p1}, Lcom/unionpay/mobile/android/model/b;-><init>()V

    iput-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object p2, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->b:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p2, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Lcom/unionpay/mobile/android/model/b;)V

    return-void
.end method
