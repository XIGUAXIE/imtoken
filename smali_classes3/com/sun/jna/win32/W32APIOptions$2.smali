.class final Lcom/sun/jna/win32/W32APIOptions$2;
.super Ljava/util/HashMap;
.source "W32APIOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/win32/W32APIOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 44
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->ASCII:Lcom/sun/jna/TypeMapper;

    const-string v1, "type-mapper"

    invoke-virtual {p0, v1, v0}, Lcom/sun/jna/win32/W32APIOptions$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/sun/jna/win32/W32APIFunctionMapper;->ASCII:Lcom/sun/jna/FunctionMapper;

    const-string v1, "function-mapper"

    invoke-virtual {p0, v1, v0}, Lcom/sun/jna/win32/W32APIOptions$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
