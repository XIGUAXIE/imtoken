.class Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;
.super Ljava/lang/Object;
.source "RNPermissionsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoontek/rnpermissions/RNPermissionsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Request"
.end annotation


# instance fields
.field public callback:Lcom/facebook/react/bridge/Callback;

.field public rationaleStatuses:[Z

.field final synthetic this$0:Lcom/zoontek/rnpermissions/RNPermissionsModule;


# direct methods
.method public constructor <init>(Lcom/zoontek/rnpermissions/RNPermissionsModule;[ZLcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;->this$0:Lcom/zoontek/rnpermissions/RNPermissionsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;->rationaleStatuses:[Z

    .line 67
    iput-object p3, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$Request;->callback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method
