{***************************************************************************}
{                                                                           }
{           iORM - (interfaced ORM)                                         }
{                                                                           }
{           Copyright (C) 2016 Maurizio Del Magno                           }
{                                                                           }
{           mauriziodm@levantesw.it                                         }
{           mauriziodelmagno@gmail.com                                      }
{           https://github.com/mauriziodm/iORM.git                          }
{                                                                           }
{                                                                           }
{***************************************************************************}
{                                                                           }
{  Licensed under the Apache License, Version 2.0 (the "License");          }
{  you may not use this file except in compliance with the License.         }
{  You may obtain a copy of the License at                                  }
{                                                                           }
{      http://www.apache.org/licenses/LICENSE-2.0                           }
{                                                                           }
{  Unless required by applicable law or agreed to in writing, software      }
{  distributed under the License is distributed on an "AS IS" BASIS,        }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. }
{  See the License for the specific language governing permissions and      }
{  limitations under the License.                                           }
{                                                                           }
{***************************************************************************}



unit iORM.Resolver.ByDependencyInjection;

interface

uses
  iORM.Resolver.Interfaces;

type

  // Service Locator Class
  TioResolverByDependencyInjection = class(TioResolver)
  public
    class function Resolve(const ATypeName:String; const AAlias:String=''; const AResolverMode:TioResolverMode=rmAll): IioResolvedTypeList; override;
  end;

implementation

uses
  iORM.DependencyInjection;

{ TioResolverByDependencyInjection }

class function TioResolverByDependencyInjection.Resolve(const ATypeName:String; const AAlias: String; const AResolverMode:TioResolverMode): IioResolvedTypeList;
begin
  inherited;
  Result := TioDependencyInjectionResolverBase.Resolve(ATypeName, AAlias, AResolverMode);
end;

end.
