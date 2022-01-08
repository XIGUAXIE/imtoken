.class Lcom/sun/jna/Structure$FFIType;
.super Lcom/sun/jna/Structure;
.source "Structure.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "size",
        "alignment",
        "type",
        "elements"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Structure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FFIType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Structure$FFIType$FFITypes;,
        Lcom/sun/jna/Structure$FFIType$size_t;
    }
.end annotation


# static fields
.field private static final FFI_TYPE_STRUCT:I = 0xd

.field private static final ffiTypeInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/jna/Pointer;",
            "Lcom/sun/jna/Structure$FFIType;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/sun/jna/Structure$FFIType;",
            ">;"
        }
    .end annotation
.end field

.field private static final unionHelper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/sun/jna/Structure$FFIType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alignment:S

.field public elements:Lcom/sun/jna/Pointer;

.field public size:Lcom/sun/jna/Structure$FFIType$size_t;

.field public type:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1925
    const-class v0, Lcom/sun/jna/Structure$FFIType;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    .line 1926
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/sun/jna/Structure$FFIType;->unionHelper:Ljava/util/Map;

    .line 1927
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    .line 1968
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    if-eqz v1, :cond_3

    .line 1970
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1900()Lcom/sun/jna/Pointer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1972
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1900()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1900()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1700()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1700()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2000()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2000()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$800()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$800()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$900()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$900()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1000()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1000()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1100()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1100()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1300()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1300()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1500()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1500()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1600()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1600()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 1986
    invoke-virtual {v1}, Lcom/sun/jna/Structure$FFIType;->read()V

    goto :goto_0

    .line 1988
    :cond_0
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1900()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Void;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1900()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1700()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1700()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1500()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1500()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1300()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1300()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1100()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1100()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    sget v0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    .line 2001
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1000()Lcom/sun/jna/Pointer;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Structure$FFIType;

    .line 2002
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$900()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$900()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Lcom/sun/jna/Pointer;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1600()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1600()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Lcom/sun/jna/WString;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1600()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1971
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "FFI types not initialized"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1969
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Native library not initialized"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 2027
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0xd

    .line 2017
    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->type:S

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Structure$FFIType;)V
    .locals 1

    .line 2020
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0xd

    .line 2017
    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 2021
    iget-object v0, p1, Lcom/sun/jna/Structure$FFIType;->size:Lcom/sun/jna/Structure$FFIType$size_t;

    iput-object v0, p0, Lcom/sun/jna/Structure$FFIType;->size:Lcom/sun/jna/Structure$FFIType$size_t;

    .line 2022
    iget-short v0, p1, Lcom/sun/jna/Structure$FFIType;->alignment:S

    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->alignment:S

    .line 2023
    iget-short v0, p1, Lcom/sun/jna/Structure$FFIType;->type:S

    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 2024
    iget-object p1, p1, Lcom/sun/jna/Structure$FFIType;->elements:Lcom/sun/jna/Pointer;

    iput-object p1, p0, Lcom/sun/jna/Structure$FFIType;->elements:Lcom/sun/jna/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Structure;)V
    .locals 11

    .line 2029
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0xd

    .line 2017
    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->type:S

    const/4 v0, 0x1

    .line 2031
    invoke-static {p1, v0}, Lcom/sun/jna/Structure;->access$2100(Lcom/sun/jna/Structure;Z)V

    .line 2033
    instance-of v1, p1, Lcom/sun/jna/Union;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 2037
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/jna/Structure$StructField;

    .line 2038
    invoke-virtual {p1, v7}, Lcom/sun/jna/Structure;->getFieldTypeInfo(Lcom/sun/jna/Structure$StructField;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v8

    .line 2039
    invoke-static {v8}, Lcom/sun/jna/Structure$FFIType;->isIntegerType(Lcom/sun/jna/Structure$FFIType;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    :cond_1
    if-eqz v4, :cond_2

    .line 2042
    iget v9, v7, Lcom/sun/jna/Structure$StructField;->size:I

    if-lt v5, v9, :cond_2

    iget v9, v7, Lcom/sun/jna/Structure$StructField;->size:I

    if-ne v5, v9, :cond_0

    const-class v9, Lcom/sun/jna/Structure;

    iget-object v10, v7, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    .line 2045
    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2047
    :cond_2
    iget v5, v7, Lcom/sun/jna/Structure$StructField;->size:I

    move-object v4, v8

    goto :goto_0

    .line 2050
    :cond_3
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2051
    invoke-static {}, Lcom/sun/jna/Platform;->isIntel()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sun/jna/Platform;->is64Bit()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2052
    :cond_4
    invoke-static {}, Lcom/sun/jna/Platform;->isARM()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    if-eqz v6, :cond_8

    .line 2064
    invoke-static {v4}, Lcom/sun/jna/Structure$FFIType;->isFloatType(Lcom/sun/jna/Structure$FFIType;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2065
    new-instance v1, Lcom/sun/jna/Structure$FFIType;

    invoke-direct {v1, v4}, Lcom/sun/jna/Structure$FFIType;-><init>(Lcom/sun/jna/Structure$FFIType;)V

    .line 2066
    iget-object v4, v1, Lcom/sun/jna/Structure$FFIType;->size:Lcom/sun/jna/Structure$FFIType$size_t;

    invoke-virtual {v4}, Lcom/sun/jna/Structure$FFIType$size_t;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 2067
    sget-object v4, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/jna/Structure$FFIType;

    iget-short v4, v4, Lcom/sun/jna/Structure$FFIType;->type:S

    iput-short v4, v1, Lcom/sun/jna/Structure$FFIType;->type:S

    goto :goto_1

    .line 2068
    :cond_6
    iget-object v4, v1, Lcom/sun/jna/Structure$FFIType;->size:Lcom/sun/jna/Structure$FFIType$size_t;

    invoke-virtual {v4}, Lcom/sun/jna/Structure$FFIType$size_t;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    .line 2069
    sget-object v4, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/jna/Structure$FFIType;

    iget-short v4, v4, Lcom/sun/jna/Structure$FFIType;->type:S

    iput-short v4, v1, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 2071
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lcom/sun/jna/Structure$FFIType;->write()V

    move-object v4, v1

    :cond_8
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sun/jna/Pointer;

    .line 2075
    invoke-virtual {v4}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v5

    aput-object v5, v1, v2

    aput-object v3, v1, v0

    .line 2078
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->unionHelper:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2081
    :cond_9
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v1, v1, [Lcom/sun/jna/Pointer;

    .line 2083
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/Structure$StructField;

    add-int/lit8 v4, v2, 0x1

    .line 2084
    invoke-virtual {p1, v3}, Lcom/sun/jna/Structure;->getFieldTypeInfo(Lcom/sun/jna/Structure$StructField;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v4

    goto :goto_2

    .line 2087
    :cond_a
    :goto_3
    invoke-direct {p0, v1}, Lcom/sun/jna/Structure$FFIType;->init([Lcom/sun/jna/Pointer;)V

    .line 2088
    invoke-virtual {p0}, Lcom/sun/jna/Structure$FFIType;->write()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2091
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0xd

    .line 2017
    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 2092
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 2093
    new-array v0, v0, [Lcom/sun/jna/Pointer;

    .line 2094
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 2096
    aput-object p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2098
    :cond_0
    invoke-direct {p0, v0}, Lcom/sun/jna/Structure$FFIType;->init([Lcom/sun/jna/Pointer;)V

    .line 2099
    invoke-virtual {p0}, Lcom/sun/jna/Structure$FFIType;->write()V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;
    .locals 0

    .line 1917
    invoke-static {p0, p1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;
    .locals 1

    if-nez p0, :cond_0

    .line 2111
    sget-object p0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v0, Lcom/sun/jna/Pointer;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/Structure$FFIType;

    return-object p0

    .line 2112
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2113
    check-cast p0, Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p0

    return-object p0

    .line 2114
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p0

    return-object p0
.end method

.method private static get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sun/jna/Structure$FFIType;"
        }
    .end annotation

    .line 2118
    invoke-static {p1}, Lcom/sun/jna/Native;->getTypeMapper(Ljava/lang/Class;)Lcom/sun/jna/TypeMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2120
    invoke-interface {v0, p1}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2122
    invoke-interface {v0}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object p1

    .line 2125
    :cond_0
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 2126
    :try_start_0
    sget-object v1, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    if-eqz v1, :cond_1

    .line 2128
    monitor-exit v0

    return-object v1

    .line 2130
    :cond_1
    sget-boolean v1, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eqz v1, :cond_2

    const-class v1, Ljava/nio/Buffer;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-class v1, Lcom/sun/jna/Callback;

    .line 2131
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2132
    :cond_3
    sget-object p0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v2, Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    sget-object p0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class p1, Lcom/sun/jna/Pointer;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/Structure$FFIType;

    monitor-exit v0

    return-object p0

    .line 2135
    :cond_4
    const-class v1, Lcom/sun/jna/Structure;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p0, :cond_5

    .line 2136
    invoke-static {}, Lcom/sun/jna/Structure;->access$2200()Lcom/sun/jna/Pointer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sun/jna/Structure$FFIType;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p0

    .line 2137
    :cond_5
    const-class v1, Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2138
    sget-object p0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    sget-object v1, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class v2, Lcom/sun/jna/Pointer;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    sget-object p0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    const-class p1, Lcom/sun/jna/Pointer;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/Structure$FFIType;

    monitor-exit v0

    return-object p0

    .line 2141
    :cond_6
    new-instance v1, Lcom/sun/jna/Structure$FFIType;

    check-cast p0, Lcom/sun/jna/Structure;

    invoke-direct {v1, p0}, Lcom/sun/jna/Structure$FFIType;-><init>(Lcom/sun/jna/Structure;)V

    .line 2142
    sget-object p0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    monitor-exit v0

    return-object v1

    .line 2145
    :cond_7
    const-class v1, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2146
    invoke-static {p1}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p1

    .line 2147
    new-instance v1, Lcom/sun/jna/ToNativeContext;

    invoke-direct {v1}, Lcom/sun/jna/ToNativeContext;-><init>()V

    invoke-virtual {p1, p0, v1}, Lcom/sun/jna/NativeMappedConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 2149
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2150
    new-instance v1, Lcom/sun/jna/Structure$FFIType;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/Structure$FFIType;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2152
    sget-object p0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    monitor-exit v0

    return-object v1

    .line 2155
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 2156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private init([Lcom/sun/jna/Pointer;)V
    .locals 6

    .line 2103
    new-instance v0, Lcom/sun/jna/Memory;

    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    array-length v2, p1

    mul-int v1, v1, v2

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/Structure$FFIType;->elements:Lcom/sun/jna/Pointer;

    .line 2104
    array-length v5, p1

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[Lcom/sun/jna/Pointer;II)V

    .line 2105
    invoke-virtual {p0}, Lcom/sun/jna/Structure$FFIType;->write()V

    return-void
.end method

.method private static isFloatType(Lcom/sun/jna/Structure$FFIType;)Z
    .locals 1

    .line 1962
    invoke-virtual {p0}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p0

    .line 1963
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1700()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1964
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isIntegerType(Lcom/sun/jna/Structure$FFIType;)Z
    .locals 1

    .line 1949
    invoke-virtual {p0}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p0

    .line 1950
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$800()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1951
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$900()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1952
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1000()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1953
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1100()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1954
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1955
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1300()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1956
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1957
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1500()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1958
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1600()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
