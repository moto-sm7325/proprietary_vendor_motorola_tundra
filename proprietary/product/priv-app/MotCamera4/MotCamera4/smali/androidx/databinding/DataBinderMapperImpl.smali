.class public Landroidx/databinding/DataBinderMapperImpl;
.super Landroidx/databinding/MergedDataBinderMapper;
.source "DataBinderMapperImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/DataBinderMapperImpl;

    invoke-direct {v0}, Lcom/motorola/camera/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Landroidx/databinding/DataBinderMapper;)V

    const-string v0, "com.motorola.camera3.dubai"

    .line 3
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.gnevan"

    .line 4
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.pnangn"

    .line 5
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.tundra"

    .line 6
    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Ljava/lang/String;)V

    return-void
.end method
