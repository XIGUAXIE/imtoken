.class public Lcmb/pb/cmbsafe/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/Boolean;

.field private static b:Ljava/util/HashMap;

.field private static c:Ljava/util/HashMap;

.field private static d:Ljava/util/HashMap;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcmb/pb/cmbsafe/b;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcmb/pb/cmbsafe/b;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcmb/pb/cmbsafe/b;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcmb/pb/cmbsafe/b;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Lcmb/pb/ui/cmbwidget/CmbEditText;
    .locals 3

    sget-object v0, Lcmb/pb/cmbsafe/b;->b:Ljava/util/HashMap;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmb/pb/ui/cmbwidget/CmbEditText;

    return-object v0
.end method

.method public static a(Landroid/app/Application;Lcmb/pb/ui/cmbwidget/CmbEditText;)V
    .locals 2

    sget-object p0, Lcmb/pb/cmbsafe/b;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcmb/pb/cmbsafe/b;->b:Ljava/util/HashMap;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcmb/pb/util/CMBKeyboardFunc;)V
    .locals 3

    sget-object v0, Lcmb/pb/cmbsafe/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcmb/pb/cmbsafe/b;->d:Ljava/util/HashMap;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcmb/pb/cmbsafe/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcmb/pb/cmbsafe/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Lcmb/pb/util/CMBKeyboardFunc;
    .locals 3

    sget-object v0, Lcmb/pb/cmbsafe/b;->d:Ljava/util/HashMap;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmb/pb/util/CMBKeyboardFunc;

    return-object v0
.end method
