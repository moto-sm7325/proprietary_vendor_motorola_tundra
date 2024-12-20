.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;
.super Ljava/lang/Object;
.source "ModuleClassResolver.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ModuleClassResolver;


# instance fields
.field public resolver:Landroidx/sqlite/db/SimpleSQLiteQuery;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolveClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;->resolver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->resolveClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "resolver"

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
